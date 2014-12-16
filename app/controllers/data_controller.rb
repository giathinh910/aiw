class DataController < ApplicationController
	respond_to :html, :json, :js
	def query
		if params[:q] == "planet"
			@planet_set = Planet.get_data(params)
			@hash = { :planets => @planet_set }
			render :json => @hash
		else params[:q] == "article"
			@article_set = Article.get_data(params)
			@hash = { :articles => @article_set }
			render :json => @hash
		end
	end
end
