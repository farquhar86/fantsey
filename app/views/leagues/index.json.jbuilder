json.array!(@leagues) do |league|
  json.extract! league, :id, :league_name
  json.url league_url(league, format: :json)
end
