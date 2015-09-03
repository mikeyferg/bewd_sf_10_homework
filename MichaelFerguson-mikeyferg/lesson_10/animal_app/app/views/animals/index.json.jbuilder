json.array!(@animals) do |animal|
  json.extract! animal, :id, :species, :age, :name
  json.url animal_url(animal, format: :json)
end
