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
  phone_number: "7897543672")

10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code)
    puts "Created a user named #{user.first_name}"
    5.times do
    game = Game.new(
      name: Faker::Game.title,
      description: Faker::Game.genre,
      console: Faker::Game.platform,
      price: Faker::Number.decimal(l_digits: 2),
      rating: Faker::Number.within(range:0.0..5.0).round(1),
      user_id: user.id
    )
    file = URI.open("https://media.contentapi.ea.com/content/dam/gin/images/2021/06/battlefield-2042-key-art.jpg.adapt.crop1x1.767p.jpg")
    game.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
    game.save!
    puts "Created a game named #{game.name}"
  end
end
