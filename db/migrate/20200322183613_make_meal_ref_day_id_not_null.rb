class MakeMealRefDayIdNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column :meal_entries, :day_id, :integer, null: false
  end
end
