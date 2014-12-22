class SatelliteController < ApplicationController
  def all
  	@nav_active = "planet"
  	@header = "planet"
  	@planet = Planet.find(params[:id])
  end
end
