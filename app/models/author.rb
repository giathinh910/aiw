class Author < ActiveRecord::Base
	validates_presence_of :name, :role, :avatar, :social_facebook, :social_twitter, :social_gplus
end
