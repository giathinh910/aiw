class PlanetController < ApplicationController

  def all
  	@nav_active = "planet"
  	@header = "planet"
  	@planets = Planet.all
  end

  def detail
  	@nav_active = "planet"
  	@header = "planet-detail"
  	@planet = Planet.find(params[:id])
  end

end
