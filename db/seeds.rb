if Rails.env.development?
  monday = Day.create(name: "Monday")
  monday.meal_entries.create(name: "Cereal", calories: 300)
  monday.meal_entries.create(name: "Sandwich", calories: 585)
  monday.meal_entries.create(name: "Roast", calories: 800)

  tuesday = Day.create(name: "Tuesday")
  tuesday.meal_entries.create(name: "Cereal", calories: 300)
  tuesday.meal_entries.create(name: "Sandwich", calories: 585)
  tuesday.meal_entries.create(name: "Roast", calories: 800)

  wednesday = Day.create(name: "Wednesday")
  wednesday.meal_entries.create(name: "Cereal", calories: 300)
  wednesday.meal_entries.create(name: "Sandwich", calories: 585)
  wednesday.meal_entries.create(name: "Roast", calories: 800)
end