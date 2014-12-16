class HomeController < ApplicationController
  def index
    @nav_active = "home"
  end

  def service
    @nav_active = "service"
  end
end
