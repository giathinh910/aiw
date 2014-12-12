class PlanetController < ApplicationController

  def all
  	@planets = Planet.all
  	@planet_avatar = "background-image: url(http://localhost/public/astronomy/planet-3.png); box-shadow: 0px 0px 100px rgba(255, 152, 48, 0.5)"
  end

  def detail
  	@planet = Planet.find(params[:id])
  	@planet_avatar = "background-image: url(" + @planet.avatar + "); box-shadow: 0px 0px 100px rgba(255, 255, 255, 0.5)"
  end

end
