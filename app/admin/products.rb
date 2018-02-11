ActiveAdmin.register Product do
	permit_params :name, :price, :active, :max_allowed_quantity, :description,  images_attributes: [:id, :name, :value, :_destroy => true]
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
 form html: { multipart: true }  do |f|
    f.inputs  do
      f.input :name
      f.input :price
      f.input :max_allowed_quantity
      f.input :description
      f.has_many :images do |ff|
        if ff.object.name.present?
          ff.input :name,  :hint =>
  ff.template.image_tag(ff.object.name.url(:thumb) ) unless ff.object.name.blank?
        else
          ff.input :name, :as => :file
        end
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :max_allowed_quantity
      row :description
      row :price do |product|
        number_to_currency product.price
      end
      row :images do
        ul do
          product.images.each do |image|
            li do
              image_tag(image.name.url(:thumb))
            end
          end
        end
      end
    end
  end

 
     


end
