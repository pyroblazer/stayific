ActiveAdmin.register Amenity do
  permit_params :name, :icon, :description

  index do
    selectable_column
    id_column
    column :name
    column :icon
    column :description
    actions
  end

  show do
    attributes_table do
      row :name
      row :icon
      row :description
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :icon
      f.input :description
    end
    f.actions
  end
end
