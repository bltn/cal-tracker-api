json.day do
  json.id @day.id
  json.name @day.name
  json.meal_entries @day.meal_entries, :id, :name, :calories
end