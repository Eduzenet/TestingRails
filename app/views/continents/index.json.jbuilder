json.array!(@continents) do |continent|
  json.extract! continent, :id, :contName, :contCode
  json.url continent_url(continent, format: :json)
end
