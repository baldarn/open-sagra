# frozen_string_literal: true

class Dish < ApplicationRecord
  enum :course,
       {
         appetizer: 0,
         first_course: 1,
         second_course: 2,
         side_dish: 3,
         dessert: 4,
         drink: 5
       }, prefix: true, scopes: false

  validates :name, :price, presence: true

  scope :appetizers, -> { where(course: 'appetizer') }
  scope :first_courses, -> { where(course: 'first_course') }
  scope :second_courses, -> { where(course: 'second_course') }
  scope :side_dishes, -> { where(course: 'side_dish') }
  scope :desserts, -> { where(course: 'dessert') }
  scope :drinks, -> { where(course: 'drink') }
end
