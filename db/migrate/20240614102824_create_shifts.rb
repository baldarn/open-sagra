# frozen_string_literal: true

class CreateShifts < ActiveRecord::Migration[7.1]
  def change
    create_table :shifts do |t|
      t.date :date

      t.timestamps
    end
  end
end
