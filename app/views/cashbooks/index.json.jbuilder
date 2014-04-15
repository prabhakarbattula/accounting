json.array!(@cashbooks) do |cashbook|
  json.extract! cashbook, :id, :date, :ledger_id, :debit_or_credit, :amount
  json.url cashbook_url(cashbook, format: :json)
end
