# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1111111111", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "1111111112", category: "italian" }
poulet =  { name: "Poulet", address: "59 Rua de la Tour Eiffel, Paris", phone_number: "1111111113", category: "french" }
osaka =  { name: "Osaka", address: "69 Sushi rd, Osaka", phone_number: "1111111114", category: "japanese" }
beerbeerbeer = { name: "Beer Beer Beer", address: "105 Belgian Beer Rd, Brussels", phone_number: "1111111115", category: "belgian" }




[ dishoom, pizza_east, poulet, osaka, beerbeerbeer ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"