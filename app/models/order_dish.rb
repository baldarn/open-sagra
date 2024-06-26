# frozen_string_literal: true

class OrderDish < ApplicationRecord
  belongs_to :order
  belongs_to :dish

  before_save :set_defaults

  private

  def set_defaults
    self.quantity = 1 if quantity.blank?
    self.price = dish.price if price.blank? || dish_changed?
  end
end
