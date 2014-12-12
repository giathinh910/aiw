class DataController < ApplicationController
	respond_to :html, :json, :js
	def query
		# @planets = Planet.all
		# respond_to do |format|
		# 	format.xml  { render xml: @planets}
		# 	format.json { render json: @planets}
		# end
		if (params[:q] == "planets")
			@planet_set = Planet.get_data(params)
			@hash = { :planets => @planet_set }
			render :json => @hash
		end
	end
end
