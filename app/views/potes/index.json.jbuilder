json.array!(@potes) do |pote|
  json.extract! pote, :id, :name, :age
  json.url pote_url(pote, format: :json)
end
