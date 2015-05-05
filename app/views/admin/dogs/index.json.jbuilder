json.array!(@admin_dogs) do |admin_dog|
  json.extract! admin_dog, :id
  json.url admin_dog_url(admin_dog, format: :json)
end
