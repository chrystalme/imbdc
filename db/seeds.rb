# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "\n== Seeding the database with fixtures =="
categories = ['Action', 'Adventure', 'Animation', 'Children', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film-Noir', 'Horror', 'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Thriller', 'War', 'Western']
puts "\n== Seeding categories =="
categories.each do |category|
  Category.create!(name: category)
end
puts "\n== Seeding users =="
User.create!(email: "admin@example.com", password: '123456', password_confirmation: '123456', role: 1)
puts "\n== Seeding movies =="
200.times do
  Movie.create!(title: Faker::Movie.title, text: Faker::Lorem.paragraph, category: Category.all.sample, publisher_id: 1)
end
puts "\n== Seeding completed. =="
