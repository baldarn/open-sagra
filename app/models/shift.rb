# frozen_string_literal: true

class Shift < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :date, presence: true
end
