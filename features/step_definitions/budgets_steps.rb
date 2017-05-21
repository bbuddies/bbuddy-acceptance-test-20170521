When(/^add budget as (month \d+-\d+ and amount \d+)$/) do |budget|
  touch 'Budgets'
  touch 'Add'
  clear_then_enter_text 'month', budget.month
  clear_then_enter_text 'amount', budget.amount
  touch 'Save'
end

Then(/^you will see all budgets as below$/) do |budgets|
  budget = budgets[0]
  wait_for_text budget.month
  wait_for_text budget.amount
end