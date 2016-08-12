class Label < ActiveRecord::Base
	has_many :labeled_posts
	has_many :posts, through: :labeled_posts
end
