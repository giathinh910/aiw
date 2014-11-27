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

permit_params :name, :mass, :diameter, :density, :gravity, :escape_velocity, :rotation_period, :day_lenght, :distance_from_sun, :perihelion, :aphelion, :orbital_period, :orbital_velocity, :orbital_Inclination, :axis_inclination, :weight, :temperature, :surface_pressure, :atmospheric_composition, :satellite, :ring, :avatar, :detail

  index do
    column "Mã số", :id
    column "Tên", :name, :sortable => :price
    actions
  end

  form do |f|
    f.inputs "Chi tiết hành tinh" do
      f.input :name
      f.input :mass
      f.input :diameter
      f.input :density
      f.input :gravity
      f.input :escape_velocity
      f.input :rotation_period
      f.input :day_lenght
      f.input :distance_from_sun
      f.input :perihelion
      f.input :aphelion
      f.input :orbital_period
      f.input :orbital_velocity
      f.input :orbital_Inclination
      f.input :axis_inclination
      f.input :weight
      f.input :temperature
      f.input :surface_pressure
      f.input :atmospheric_composition
      f.input :satellite
      f.input :ring
      f.input :avatar
      f.input :detail
    end
    f.actions
  end

end
