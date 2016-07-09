class Concert < ActiveRecord::Base

	has_many :comments

	validates 	:artist, :venue, :city, :date, :price, :description,
				presence: true

	def self.todays_concerts
		Concert.where(date: [Time.new.beginning_of_day..Time.new.end_of_day]).order(date: :asc)
	end

	def self.months_concerts
		Concert.where(date: [(Time.new.beginning_of_day + 1.day)..Time.new.end_of_month]).order(date: :asc)
	end

	def self.the_future
		Concert.where("date > ?", (Time.new.beginning_of_day))
	end

	def self.top_10
		Concert.order(comments_count: :desc)
	end
end
