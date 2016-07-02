# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Shortner.create!(original: "google.com", shorturl: "link1")
Shortner.create!(original: "github.com", shorturl: "link2")
Shortner.create!(original: "gmail.com", shorturl: "link3")
Shortner.create!(original: "yahoo.com", shorturl: "link4")
