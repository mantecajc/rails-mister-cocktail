# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning data base"
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "Creating ingredients"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "Creating cocktails..."

20.times do
  Cocktail.create(name: Faker::Coffee.blend_name)
end

puts "Creating doses..."

10.times do
  Dose.create(description: rand(1..40), ingredient_id: rand(1..3), cocktail_id: rand(1..20))
end

puts "Finished!"