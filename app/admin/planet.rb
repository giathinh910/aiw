ActiveAdmin.register Planet do


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

permit_params :name, :mass, :diameter, :density, :gravity, :escape_velocity, :rotation_period, :day_lenght, :distance_from_sun, :perihelion, :aphelion, :orbital_period, :orbital_velocity, :orbital_Inclination, :axis_inclination, :weight, :temperature, :surface_pressure, :atmospheric_composition, :satellite, :ring

  index do
    column "Tên", :name, :sortable => :price
    column "Ngày tạo", :created_at
    column "Ngày sửa gần nhất", :modified_at
    actions
  end
end
