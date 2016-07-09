class Comment < ActiveRecord::Base

	belongs_to 	:concert, counter_cache: true

	validates 	:comment,
				presence: true

end
