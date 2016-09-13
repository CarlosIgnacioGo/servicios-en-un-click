class ServicesController < ApplicationController
  load_and_authorize_resource

  before_action :set_service, only: [:show, :edit, :update, :destroy, :publish]

  # GET /services
  # GET /services.json
  def index
    @services = Service.search(params[:input_search]).published.order(:visit_count => :desc)
    @categories = Category.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    if @service.published?
      @service.update_visit_count
      @comment = Comment.new
      @categories = Category.all
    else
      redirect_to root_path, notice: 'El servicio que buscas no existe.'
    end
  end

  # GET /services/new
  def new
    @service = Service.new
    @category = Category.all
  end

  # GET /services/1/edit
  def edit
    @category = Category.all
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    @service.user = current_user
    
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def publish
    @service.publish!
    redirect_to admin_services_path
  end

  def unpublish
    @service.unpublish!
    redirect_to admin_services_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:photo, :title, :description, :address, :email, :phone, category_ids: [])
    end
end
