# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Mario",email: "mario@gmail.com")
User.create!(name: "Bowser",email: "bowser@gmail.com")
User.create!(name: "Peach",email: "peach@gmail.com")
User.create!(name: "Boo",email: "boo@gmail.com")


# Product.create!(name: "Kart", description: "slightly used kart, won the mushroom cup wiht it", deadline: "")