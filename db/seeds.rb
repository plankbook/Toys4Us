# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "Database clean-up"
Booking.delete_all
Toy.delete_all
User.delete_all
puts"Create new users..."
5.times do
    User.create!(
        email: "#{Faker::Music.chord}@gmail.com", 
        password: '1fowest1'
    )
end
users = User.all
puts "#{User.count} users created"
puts "Creating the Toys..."
100.times do
    Toy.create!(
        name: Faker::Games::Pokemon.name, 
        price: (1..100).to_a.sample.to_f, 
        user: users.sample
    )
end
toys = Toy.all
puts "#{toys.count} toys created"
puts"Creating Bookings..."
10.times do
    Booking.create!(
        start_date: Faker::Date.between(from: '2021-09-23', to: '2022-09-25'),
        end_date: :start_date,
        toy: toys.sample,
        user: users.sample
    )
end
bookings = Booking.all
puts "#{bookings.count} bookings created"