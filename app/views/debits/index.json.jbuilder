json.array!(@debits) do |debit|
  json.extract! debit, :id, :name
  json.url debit_url(debit, format: :json)
end
