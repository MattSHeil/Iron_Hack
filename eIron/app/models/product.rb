class Product < ActiveRecord::Base

	has_many :bids
	belongs_to 	:user
	validates   :user, 			presence: true

	validates 	:name,
				:description, 
				:deadline, 		presence: true

	def self.last_created_product(limit)
		limit(limit).order(created_at: :desc)
	end

end
