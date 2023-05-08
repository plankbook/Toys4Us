# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

puts "Database clean-up"
Booking.delete_all
Toy.delete_all
User.delete_all

puts "Loading the image..."
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
toy = Toy.new(name: "NES", description: "A great console", price: 100.00)
toy.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
toy.save

puts"Create new users..."
5.times do
    user = User.create!(
        name: "#{Faker::Music.chord}",
        email: "#{Faker::Music.chord}@gmail.com",
        password: '1fowest1'
    )
    60.times do

    end
end
users = User.all
puts "#{User.count} users created"
puts "Creating the Toys..."
prices = (1..100).to_a
100.times do
    Toy.create!(
        name: Faker::Games::Pokemon.name,
        price: prices.sample.to_f,
        user: users.sample,
        description: "test"
    )
end
toys = Toy.all
puts "#{toys.count} toys created"
puts"Creating Bookings..."
10.times do
  date = Faker::Date.between(from: '2021-09-23', to: '2022-09-25')
  Booking.create!(
      start_date: date,
      end_date: date + 1,
      toy: toys.sample,
      user: users.sample
  )
end
bookings = Booking.all
puts "#{bookings.count} bookings created"
