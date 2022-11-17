# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Destroying my DB...."

Movie.destroy_all

puts "Creating 20 movies.............."

20.times do
  Movie.create(title: Faker::JapaneseMedia::Naruto.character, overview: Faker::Lorem.paragraph, poster_url: "https://source.unsplash.com/random/1920x1080/?wallpaper,landscape", rating: Faker::Number.decimal(l_digits: 2))
end


puts "20 movies has created......."
