class User < ActiveRecord::Base

	has_many :products

	validates :email,	uniqueness: true,
						presence: true

	validates :name, 	presence: true

	def self.last_created_user(limit)
		limit(limit).order(created_at: :desc)
	end

end
