ActiveAdmin.register Profile do
  permit_params :name, :address_1, :address_2, :city, :state, :country_code, :user_id, :picture

  index do
    selectable_column
    id_column
    column :name
    column :address_1
    column :city
    column :state
    column :country_code
    column :user
    actions
  end

  show do
    attributes_table do
      row :name
      row :address_1
      row :address_2
      row :city
      row :state
      row :country_code
      row :user
      row :picture do |profile|
        image_tag url_for(profile.picture) if profile.picture.attached?
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :address_1
      f.input :address_2
      f.input :city
      f.input :state
      f.input :country_code
      f.input :user
      f.input :picture, as: :file
    end
    f.actions
  end
end
