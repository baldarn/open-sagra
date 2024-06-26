# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.integer :status, default: 0
      t.datetime :date

      t.timestamps
    end
  end
end
