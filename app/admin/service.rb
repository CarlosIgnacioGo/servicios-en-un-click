ActiveAdmin.register Service do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
	permit_params do
	  permitted = [:title, :description,:price,:address,:email,:phone,:photo]
	end		
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		selectable_column
		id_column
		column :title
		actions
	end

	form do |f|
	  f.inputs "Nuevo Service" do
	    f.input :title
	    f.input :description
	    f.input :price
	    f.input :address
	    f.input :photo 
	  end
	  f.actions
	end
end



