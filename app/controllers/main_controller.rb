class MainController < ApplicationController    
  def index
  	@services = Service.order(:created_at).limit(4)
  end
end
