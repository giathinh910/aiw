class SatelliteController < ApplicationController
  def detail
  	@nav_active = "planet"
  	@header = "planet"
  	@satellite = Satellite.find(params[:id])
  end
end
