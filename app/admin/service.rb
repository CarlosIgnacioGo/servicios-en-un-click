ActiveAdmin.register Service do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
    permitted = [:title, :description,:address,:email,:phone,:photo]
  end   

  member_action :unpublish do
    resource.unpublish!
    redirect_to admin_services_path
  end  

  member_action :publish do
    resource.publish!
    redirect_to admin_services_path
  end  

#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :title    
    column  "Estado" do |service|
      if service.published?
        link_to 'Despublicar', unpublish_admin_service_path(service)
      else
        link_to 'Publicar', publish_admin_service_path(service)
      end
    end
    actions
  end

  form do |f|
    f.inputs "Nuevo Service" do
      f.input :title
      f.input :description
      f.input :address
      f.input :photo 
    end
    f.actions
  end
end



