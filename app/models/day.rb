class Day < ApplicationRecord
  has_many :meal_entries, dependent: :destroy
end
