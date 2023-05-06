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

puts "Create new users..."
5.times do
  User.create!(
    email: "#{Faker::Music.chord}@gmail.com",
    password: '1fowest1'
  )
end
users = User.all
puts "#{User.count} users created"

prices = (1..100).to_a
# 100.times do
#   Toy.create!(
#     name: Faker::Games::Pokemon.name,
#     price: prices.sample.to_f,
#     user: users.sample,
#     description: "test"
#   )
# end

puts "Creating Toys with images..."
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://i5.walmartimages.ca/images/Enlarge/955/106/6000203955106.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://m.media-amazon.com/images/I/71gVLIfE6fL._AC_SX466_.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.toysrus.ca/dw/image/v2/BDFX_PRD/on/demandware.static/-/Sites-toys-master-catalog/default/dwa966d239/images/E208808E_1.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")
######################
file = URI.open("https://cdn.shopify.com/s/files/1/0608/9618/2503/products/5278_-_Packshot_-_01_1024x1024.png")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://media-www.canadiantire.ca/product/seasonal-gardening/toys/preschool-toys-activities/0508299/-squishmallow-8-plush-assorted-1ad68f58-7b9b-4e25-bab6-768459dc3394.png")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://multimedia.bbycastatic.ca/multimedia/products/500x500/160/16024/16024907.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://cdn.trendhunterstatic.com/thumbs/ted-teddy-bear.jpeg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://i0.wp.com/ponderings.com.au/wp-content/uploads/2020/08/Little-Miss-No-Name-Doll-Hasbro-pic-1A-2048-e1ad703a-f.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://smedia2.intoday.in/indiatoday/images/stories/2015August/10_081815060221.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://images.squarespace-cdn.com/content/v1/5bae951c0cf57d044b027f3d/1666816691163-2B5B93B032LG8KQ6C28L/51foaeGZyeL._AC_SX679_.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://m.media-amazon.com/images/I/71-oyzQV-aL._AC_SL1500_.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.toysrus.ca/dw/image/v2/BDFX_PRD/on/demandware.static/-/Sites-toys-master-catalog/default/dwa966d239/images/E208808E_1.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.slate.com/content/dam/slideshows/life/travel_leisure/2011/12/24/the-worlds-strangest-toys/jcr%3Acontent/slideshow/0/images%252Fslides%252F1_Erwin_2.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://dr9wvh6oz7mzp.cloudfront.net/i/2e48a76c2d2b1f92cf69918903c2da78.png")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://media.greenmatters.com/brand-img/kiSnKLLPg/0x0/rocket-1585605315878.png")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.oddee.com/wp-content/uploads/2018/03/resizedbarbie.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://cdn.shopify.com/s/files/1/0473/6132/7254/products/MoochietheSlackerSloth.png")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.ikea.com/ca/en/images/products/lillabo-toy-vehicle-mixed-colors__0877107_pe611086_s5.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://i5.walmartimages.ca/images/Large/028/780/6000205028780.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://5.imimg.com/data5/SELLER/Default/2022/2/PL/GK/BM/18751002/pop-it-toy-500x500.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://i.etsystatic.com/25529919/r/il/5a7077/2880212481/il_fullxfull.2880212481_e3qw.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://www.littlegoosetoys.com/components/com_virtuemart/shop_image/product/full/billygoat613183c7e0594_r1.200x200.284a4.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

file = URI.open("https://m.media-amazon.com/images/I/41q0M4o2-nL._SL500_.jpg")
toy = Toy.create!(name: Faker::Book.title, description: Faker::Quote.famous_last_words, price: prices.sample.to_i, user: users.sample)
toy.photos.attach(io: file, filename: "#{toy.name}.png", content_type: "image/png")

toys = Toy.all
puts "#{toys.count} toys created"
puts "Creating Bookings..."
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
