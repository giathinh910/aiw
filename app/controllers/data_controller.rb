class DataController < ApplicationController
	def planets
		@planets = Planet.all
		# if params[:name]
		# 	@planets = planets.
		# end
		# @planets = params
		respond_to do |format|
			format.xml  { render xml: @planets}
			format.json { render json: @planets}
		end
	end
end
