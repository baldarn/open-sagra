# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :OrderDish, dependent: :destroy

  validates :customer_name, presence: true
end
