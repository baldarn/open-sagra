# frozen_string_literal: true

class CreateOrderDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :order_dishes do |t|
      t.belongs_to :order
      t.belongs_to :dish

      t.integer :price

      t.timestamps
    end
  end
end
