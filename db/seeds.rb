# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create( name: 'Star Wars', name: 'Lord of the Rings' )
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Game.destroy_all

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
    game = Game.create!(
      name: Faker::Game.title,
      description: Faker::Internet.password,
      console: Faker::Game.platform,
      price: rand(10...80),
      rating: rand(1..5),
      user_id: user.id
    )
    puts "Created a game named #{game.name}"
  end
end
