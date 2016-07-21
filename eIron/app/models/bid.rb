class Bid < ActiveRecord::Base

	belongs_to :user
	belongs_to :product

	attr_accessor :email

	def self.last_bids(limit)
		limit(limit).order(amount: :desc)
	end
end
