# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Dish.create!(name: 'Ceviche', price: 1500, course: :appetizer)
Dish.create!(name: 'Tiradito', price: 1200, course: :appetizer)

Dish.create!(name: 'Steak', price: 2500, course: :first_course)
Dish.create!(name: 'Salmon', price: 2000, course: :first_course)

Dish.create!(name: 'Pasta', price: 1800, course: :second_course)
Dish.create!(name: 'Risotto', price: 1600, course: :second_course)

Dish.create!(name: 'Mashed Potatoes', price: 1000, course: :side_dish)
Dish.create!(name: 'Grilled Vegetables', price: 1200, course: :side_dish)

Dish.create!(name: 'Tiramisu', price: 900, course: :dessert)
Dish.create!(name: 'Cheesecake', price: 800, course: :dessert)

Dish.create!(name: 'Mojito', price: 1000, course: :drink)
Dish.create!(name: 'Cosmopolitan', price: 1200, course: :drink)
