# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
five_guys = { name: 'Five Guys', address: 'Neumarkt', category: 'chinese' }
pizza_hut = { name: 'Pizza Hut', address: 'Friesenplatz', category: 'italian' }
burger_king =  { name: 'Burger King', address: 'Rudolfplatz', category: 'japanese' }
mcdonalds =  { name: 'McDonalds', address: 'Zulpicheplatz', category: 'french' }
bang_bang =  { name: 'Bang Bang', address: 'Hansaring', category: 'belgian' }

[five_guys, pizza_hut, burger_king, mcdonalds, bang_bang].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
