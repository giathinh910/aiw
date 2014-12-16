class ArticleController < ApplicationController
  def all
      @nav_active = "article"
      @header = "article"
  	@planet_avatar = "background-image: url(http://localhost/public/astronomy/planet-6.png); box-shadow: 0px 0px 100px rgba(255, 255, 255, 0.5)"
  	if params[:tag]
  		@articles = Article.paginate(:page => params[:page], :per_page => 2).tagged_with(params[:tag])
  	else
  		@articles = Article.paginate(:page => params[:page], :per_page => 2)
  	end
  end

  def detail
    @nav_active = "article"
    @header = "article"
  	@post = Article.find(params[:id])
  	@planet_avatar = "background-image: url(http://localhost/www/aiw2014_astronomy/public/images/planet-3.png); box-shadow: 0px 0px 100px rgba(255, 152, 48, 0.5)"
  end
end
