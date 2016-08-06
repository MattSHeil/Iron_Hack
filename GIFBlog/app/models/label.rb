class Label < ActiveRecord::Base
	has_many :labeled_posts
	has_many :labels, through: :labeled_posts
end
