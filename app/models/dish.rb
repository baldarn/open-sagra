# frozen_string_literal: true

class Dish < ApplicationRecord
  enum :course,
       {
         appetizer: 0,
         first_course: 1,
         secound_course: 2,
         side_dish: 3,
         dessert: 4,
         drink: 5
       }, prefix: true, scopes: false

  validates :name, :price, presence: true
end
