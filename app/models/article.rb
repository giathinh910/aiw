class Article < ActiveRecord::Base
	acts_as_taggable
	validates_presence_of :title, :feature_image, :brief, :content, :tag_list, :admin_user_id
	belongs_to :admin_user

	def self.get_data(params)
		if params
			params.each do |k,v|
				if ( (k != "controller") && (k!= "action") )
					@articles = Article.where(k + " LIKE ? ", "%" + v + "%")
				end
			end
			@articles
		else
			@articles = Article.all;
		end
	end
end
