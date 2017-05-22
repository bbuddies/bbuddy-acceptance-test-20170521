When(/^add demo as (month \d+-\d+ and amount \d+)$/) do |budget|
  touch 'Demos'
  touch 'Add'
  clear_then_enter_text 'month', budget.month
  clear_then_enter_text 'amount', budget.amount
  touch 'Save'
end

Then(/^you will see all demos as below$/) do |budgets|
  budget = budgets[0]
  wait_for_text budget.month
  wait_for_text budget.amount
end