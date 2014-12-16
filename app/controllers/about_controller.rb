class AboutController < ApplicationController
  def index
  	@nav_active = "about"
  	@header = "about"
  	@authors = Author.all
  end
end
