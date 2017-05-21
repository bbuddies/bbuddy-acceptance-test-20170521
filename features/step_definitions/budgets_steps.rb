When(/^add budget as month (\d+-\d+) and amount (\d+)$/) do |month, amount|
  touch 'Budgets'
  touch 'Add'
  clear_then_enter_text 'month', month
  clear_then_enter_text 'amount', amount
  touch 'Save'
end

Then(/^you will see all budgets as below$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end