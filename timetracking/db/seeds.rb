# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = [
	["matt", "some description"],
	["josh", "some description"],
	["cris", "some description"],
	["diter", "some description"],
	["ryan", "some description"]
]

project1 = Project.create(name: "Matt", description: "some description")
project2 = Project.create(name: "dieter", description: "some description")
project3 = Project.create(name: "ryan", description: "some description")
project4 = Project.create(name: "josh", description: "some description")
project5 = Project.create(name: "leo", description: "some description")

project = [project1, project2, project3, project4, project5]

project.each do | project |
	(rand(5) + 1 ).times do | i |
		project.time_entries.create(hours: rand(23), minutes: rand(59))
	end
end