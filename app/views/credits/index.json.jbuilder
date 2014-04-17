json.array!(@credits) do |credit|
  json.extract! credit, :id, :name
  json.url credit_url(credit, format: :json)
end
