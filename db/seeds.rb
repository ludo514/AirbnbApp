# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all
c = []
d = []
ds = []
race = ["caniche", "rotveiller","berger-Allemand", "chi wa wa"]
10.times do |index|
	c << City.create(id:index,city_name: Faker::Address.city)
	puts "#{Faker::Address.city}"
end
10.times do |index|
	d << Dog.create(id:index,race: race.sample, name: Faker::Name.first_name,city: c.sample)
	ds <<Dogsitter.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c.sample)
	puts "Chien : #{Faker::Name.first_name}"
end

10.times do |index|
	Stroll.create(id:index,date: Faker::Time.forward(days: 23), dog: d.sample, dogsitter: ds.sample)
	puts"date de promenade :#{Faker::Time.forward(days: 23)}"
end
