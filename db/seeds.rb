# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all
puts 'Creating flatss...'
10.times do
  Flat.create!(name: Faker::GreekPhilosophers.name, address: Faker::Address.full_address, description: Faker::GreekPhilosophers.quote, price_per_night: rand(100...500), number_of_guests: rand(1..3))
end
puts "created #{Flat.count} flats"
