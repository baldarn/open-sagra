# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_dishes, dependent: :destroy
  accepts_nested_attributes_for :order_dishes, reject_if: :all_blank, allow_destroy: true

  enum :status,
       {
         draft: 0,
         to_pay: 1,
         payed: 2
       }, prefix: true, scopes: false

  validates :customer_name, presence: true

  def total
    order_dishes.sum(:price)
  end
end
