ActiveAdmin.register Reservation do
  permit_params :checkin_date, :checkout_date, :user_id, :property_id

  index do
    selectable_column
    id_column
    column :checkin_date
    column :checkout_date
    column :user
    column :property
    actions
  end

  show do
    attributes_table do
      row :checkin_date
      row :checkout_date
      row :user
      row :property
    end
  end

  form do |f|
    f.inputs do
      f.input :checkin_date, as: :datepicker
      f.input :checkout_date, as: :datepicker
      f.input :user
      f.input :property
    end
    f.actions
  end
end
