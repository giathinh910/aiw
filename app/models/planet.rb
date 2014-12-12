class Planet < ActiveRecord::Base
	validates_presence_of :name, :mass, :diameter, :density, :gravity, :escape_velocity, :rotation_period, :day_lenght, :distance_from_sun, :perihelion, :aphelion, :orbital_period, :orbital_velocity, :orbital_Inclination, :axis_inclination, :weight, :temperature, :surface_pressure, :atmospheric_composition, :satellite, :ring, :avatar, :detail
	has_many :satellites

	def self.get_data(params)
		if params
			params.each do |k,v|
				if ( (k != "controller") && (k!= "action") )
					@planets = Planet.where(k + " LIKE ? ", "%" + v + "%")
				end
			end
			@planets
		else
			@planets = Planet.all;
		end
	end
end
