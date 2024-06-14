# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price

      t.integer :course, default: 0

      t.timestamps
    end
  end
end
