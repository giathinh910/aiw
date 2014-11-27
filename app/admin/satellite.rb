ActiveAdmin.register Satellite do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :planet_id, :year_discovered, :discoverer, :distance_from_planet, :orbital_period, :avatar, :detail

  index do
    column "Mã số", :id
    column "Tên", :name, :sortable => :price
    actions
  end

  form do |f|
    f.inputs "Chi tiết hành tinh" do
      f.input :name
      f.input :year_discovered
      f.input :discoverer
      f.input :distance_from_planet
      f.input :orbital_period
      f.input :avatar
      f.input :detail, :as => :ckeditor
    end
    f.actions
  end

end
