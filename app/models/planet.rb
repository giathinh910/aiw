class Planet < ActiveRecord::Base
	validates_presence_of :name, :mass, :diameter, :density, :gravity, :escape_velocity, :rotation_period, :day_lenght, :distance_from_sun, :perihelion, :aphelion, :orbital_period, :orbital_velocity, :orbital_Inclination, :axis_inclination, :weight, :temperature, :surface_pressure, :atmospheric_composition, :satellite, :ring, :avatar, :detail
end
