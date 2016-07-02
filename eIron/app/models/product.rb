class Product < ActiveRecord::Base

	belongs_to 	:user
	validates   :user, 			presence: true

	validates 	:name,
				:description, 
				:deadline, 		presence: true

end
