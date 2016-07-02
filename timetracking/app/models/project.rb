class Project < ActiveRecord::Base

# Does all this by itself

	# class Project
	# 	attr_reader :name

	# 	def initiate(name) 
	# 		@name = name
	# 	end
	# end

	# p = Project.new (Matt)

	# puts p

	has_many :time_entries

	validates :name, uniqueness: true, 
					 presence: true,   
					 length: {maximum: 30},
					 format: {with: /[a-zA-Z0-9]+/}


	def self.clean_old
		where( "creatted_at < ?", 1.week.ago).destroy_all

						# SAME AS 

		# self.where( "creatted_at < ?", 1.week.ago).destroy_all
		# Project.where( "creatted_at < ?", Time.now - 1.week).destroy_all
	
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end

	def total_hours_month(month, year)
		date = Time.new(year, month)

		entries_in_month = time_entries.where(
			date: date..date.end_of_month
		)

		hours = entries_in_month.sum { | e | e.hours }
		minutes = entries_in_month.sum { | e | e.minutes }
		(minutes / 60) + hours
	end
end
