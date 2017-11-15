# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
rest_category = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating Restaurants'
10.times do |r|
  Restaurant.create!(
    name: Faker::Hipster.word,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: rest_category.sample)
end
puts 'Lez Eat!'
