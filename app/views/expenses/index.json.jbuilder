json.array!(@expenses) do |expense|
  json.extract! expense, :name, :amount, :unit_value=float, :unit
  json.url expense_url(expense, format: :json)
end
