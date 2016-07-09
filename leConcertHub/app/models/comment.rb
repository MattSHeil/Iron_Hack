class Comment < ActiveRecord::Base

	belongs_to 	:concert

	validates 	:comment,
				presencer: true

end
