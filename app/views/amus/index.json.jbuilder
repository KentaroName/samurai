json.array!(@amus) do |amu|
  json.extract! amu, :id, :name, :age
  json.url amu_url(amu, format: :json)
end
