ActiveAdmin.register Category do

	permit_params do
	  permitted = [:name]
	end
	
	form do |f|
	  f.inputs "Nuevo Categoria" do
	    f.input :name
	  end
	  f.actions
	end

end
