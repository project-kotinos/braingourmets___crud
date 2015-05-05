json.array!(@admin_espressos) do |admin_espresso|
  json.extract! admin_espresso, :id
  json.url admin_espresso_url(admin_espresso, format: :json)
end
