class SatelliteController < ApplicationController
  def detail
  	@satellite = Satellite.find(params[:id])
  end
end
