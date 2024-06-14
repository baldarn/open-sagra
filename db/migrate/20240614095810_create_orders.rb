# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :customer_name

      t.belongs_to :shift

      t.timestamps
    end
  end
end
