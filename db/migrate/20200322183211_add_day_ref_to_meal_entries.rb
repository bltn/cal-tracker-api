class AddDayRefToMealEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :meal_entries, :day, null: true, foreign_key: true
  end
end
