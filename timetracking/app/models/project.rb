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

	def self.clean_old
		where( "creatted_at < ?", 1.week.ago).destroy_all

						# SAME AS 

		# self.where( "creatted_at < ?", 1.week.ago).destroy_all
		# Project.where( "creatted_at < ?", Time.now - 1.week).destroy_all
	
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end

end
