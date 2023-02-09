# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "\n== Seeding the database with fixtures =="
User.create!(email: "afam_ifeanyi@live.com", password: '123456', password_confirmation: '123456', role: 'admin')
20.times do
  Movie.create!(title: Faker::Movie.title, text: Faker::Lorem.paragraph, category: Category.all.sample, user_id: 1)
end
puts "\n== Seeding completed. =="
