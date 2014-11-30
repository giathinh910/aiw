class Article < ActiveRecord::Base
	acts_as_taggable
	belongs_to :admin_user
end
