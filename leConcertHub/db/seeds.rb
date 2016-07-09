# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Concert.create!(artist:"Slipknot", venue:"AAA Arena", city:"Miami", 
	date: Time.new(2016, 07, 30, 19), price: 40.00, 
	description: "Your bones don't break, mine do. That's clear.
	Your cells react to bacteria and viruses differently than mine.
	You don't get sick, I do. That's also clear. But for some reason,
	you and I react the exact same way to water. We swallow it too fast,
	we choke. We get some in our lungs, we drown. However unreal it may seem,
	we are connected, you and I. We're on the same curve, just on opposite ends." )
Concert.create!(artist:"Lamb of God", venue:"Ft Lauderdale Pavillion", city:"Ft Lauderdale",
	date: Time.new(2016, 07, 20, 19), price: 25.00, 
	description: "Your bones don't break, mine do. That's clear.
	Your cells react to bacteria and viruses differently than mine.
	You don't get sick, I do. That's also clear. But for some reason,
	you and I react the exact same way to water. We swallow it too fast,
	we choke. We get some in our lungs, we drown. However unreal it may seem,
	we are connected, you and I. We're on the same curve, just on opposite ends." )
Concert.create!(artist:"Muse", venue:"Some Venue", city:"Jacksonville",
	date: Time.new(2016, 07, 10, 19), price: 50.00, 
	description: "Your bones don't break, mine do. That's clear.
	Your cells react to bacteria and viruses differently than mine.
	You don't get sick, I do. That's also clear. But for some reason,
	you and I react the exact same way to water. We swallow it too fast,
	we choke. We get some in our lungs, we drown. However unreal it may seem,
	we are connected, you and I. We're on the same curve, just on opposite ends." )
Concert.create!(artist:"Linking Park", venue:"SomeOther Venue", city:"Tampa",
	date: Time.new(2016, 07, 4, 19), price: 20.00, 
	description: "Your bones don't break, mine do. That's clear.
	Your cells react to bacteria and viruses differently than mine.
	You don't get sick, I do. That's also clear. But for some reason,
	you and I react the exact same way to water. We swallow it too fast,
	we choke. We get some in our lungs, we drown. However unreal it may seem,
	we are connected, you and I. We're on the same curve, just on opposite ends." )
Concert.create!(artist:"AC DC", venue:"SunLife Stadium", city:"Miami",
	date: Time.new(2016, 07, 27, 19), price: 60.00, 
	description: "Your bones don't break, mine do. That's clear.
	Your cells react to bacteria and viruses differently than mine.
	You don't get sick, I do. That's also clear. But for some reason,
	you and I react the exact same way to water. We swallow it too fast,
	we choke. We get some in our lungs, we drown. However unreal it may seem,
	we are connected, you and I. We're on the same curve, just on opposite ends." )