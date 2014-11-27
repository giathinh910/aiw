class PlanetController < ApplicationController

  def all
  	@planets = Planet.all
  end

  def detail
  	@planet = Planet.find(params[:id])
  end

end
