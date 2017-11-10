json.extract! expense, :id, :quantity, :process, :date_expenses, :category, :state, :vinculation, :created_at, :updated_at
json.url expense_url(expense, format: :json)
