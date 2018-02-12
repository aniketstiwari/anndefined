ActiveAdmin.register SliderImage do
		permit_params :name

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  show do
  	attributes_table do
      row "Avatar" do |slider_image|
	  	  image_tag slider_image.name, class: "image-preview-small" if slider_image.name.present? && slider_image.name.file.exists?
      end	
    end  
  end

  form html: { multipart: true }  do |f|
  	panel "Note:" do
  		"Please add images with height 400px and width 900px;"
  	end
    f.inputs  do
    	if f.object.name.present?
        f.input :name,  :hint => f.template.image_tag(f.object.name.url(:thumb) ) unless f.object.name.blank?
      else
    	  f.input :name, :as => :file
    	end  
    end
    f.actions 
  end  

 
  actions :index, :show, :edit, :update, :new, :create
end
