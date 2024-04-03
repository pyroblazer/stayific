ActiveAdmin.register Property do
  permit_params :name, :headline, :description, :address_1, :address_2, :city, :state, :country_code, :latitude, :longitude, :price_cents, :bedroom_count, :bed_count, :guest_count, :bathroom_count, :user_id, images: []

  index do
    selectable_column
    id_column
    column :name
    column :headline
    column :description
    column :address_1
    column :city
    column :state
    column :country_code
    column :latitude
    column :longitude
    column :price
    column :bedroom_count
    column :bed_count
    column :guest_count
    column :bathroom_count
    column :user
    actions
  end

  show do
    attributes_table do
      row :name
      row :headline
      row :description
      row :address_1
      row :address_2
      row :city
      row :state
      row :country_code
      row :latitude
      row :longitude
      row :price
      row :bedroom_count
      row :bed_count
      row :guest_count
      row :bathroom_count
      row :user
      row :images do |property|
        ul do
          property.images.each do |img|
            li do
              image_tag url_for(img)
            end
          end
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :headline
      f.input :description, as: :rich_text
      f.input :address_1
      f.input :address_2
      f.input :city
      f.input :state
      f.input :country_code
      f.input :latitude
      f.input :longitude
      f.input :price_cents, label: "Price (cents)"
      f.input :bedroom_count
      f.input :bed_count
      f.input :guest_count
      f.input :bathroom_count
      f.input :user
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
