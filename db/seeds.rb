# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create( name: 'Star Wars', name: 'Lord of the Rings' )
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
Booking.destroy_all
Game.destroy_all
User.destroy_all

user = User.create!(
  first_name: "Banana",
  last_name: "Banana",
  email: "banana@com",
  password: "123456banana",
  address: "138 Kingsland Rd",
  phone_number: "7897543672"
)

game = Game.new(
  name: "Grand Theft Auto V",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "PlayStation 4",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://static.wikia.nocookie.net/gtawiki/images/7/76/CoverArt-GTAV.png/revision/latest?cb=20130826184215")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Minecraft",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "XBOX One",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Black Desert Online",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "Xbox Series X",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/8/85/Black_Desert_Online_Logo_%28En%29.png")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "The Legend of Zelda",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "Nintendo Switch",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://m.media-amazon.com/images/I/81NPLf6o0LL._AC_SY606_.jpg")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Spider-Man",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "PlayStation",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://static.wikia.nocookie.net/spidermanps4/images/d/d4/Marvel%27s_Spider-Man_front_cover_%28US%29.png/revision/latest?cb=20201003182432")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Ghost of Tsushima",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "PlayStation",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/b/b6/Ghost_of_Tsushima.jpg")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "God of War",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "PlayStation 4",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://image.api.playstation.com/vulcan/img/rnd/202010/2217/LsaRVLF2IU2L1FNtu9d3MKLq.jpg")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Cyberpunk 2077",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "PlayStation",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://cdn.cloudflare.steamstatic.com/steam/apps/1091500/capsule_616x353.jpg?t=1621944801")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

game = Game.new(
  name: "Stardew Valley",
  description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  console: "Nintendo Switch",
  price: Faker::Number.decimal(l_digits: 2),
  rating: Faker::Number.within(range: 0.0..5.0).round(1),
  user_id: user.id
)
file = URI.open("https://upload.wikimedia.org/wikipedia/en/f/fd/Logo_of_Stardew_Valley.png")
game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
game.save!

# 1.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number_with_country_code)
#     puts "Created a user named #{user.first_name}"
#     1.times do
#     game = Game.new(
#       name: Faker::Game.title,
#       description: Faker::Game.genre,
#       console: Faker::Game.platform,
#       price: Faker::Number.decimal(l_digits: 2),
#       rating: Faker::Number.within(range:0.0..5.0).round(1),
#       user_id: user.id
#     )
#     file = URI.open("https://media.contentapi.ea.com/content/dam/gin/images/2021/06/battlefield-2042-key-art.jpg.adapt.crop1x1.767p.jpg")
#     game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
#     game.save!
#     puts "Created a game named #{game.name}"
#   end
# end
