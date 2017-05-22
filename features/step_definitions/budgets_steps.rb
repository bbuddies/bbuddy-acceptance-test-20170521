Given(/^existing budgets$/) do |budgets|
  budgets[0].save
  # table is a Cucumber::MultilineArgument::DataTable
  # pending # Write code here that turns the phrase above into concrete actions
end

When(/^add budget as (month \d+-\d+ and amount -?\d+)$/) do |budget|
  touch 'Budgets'
  touch 'Add'
  clear_then_enter_text 'month', budget.month
  clear_then_enter_text 'amount', budget.amount
  touch 'Save'
end

Then(/^you will not see previous budgets$/) do |budgets|
  budgets.each do |budget|
    #wait_for_text_does_not_exist budget.month
    wait_for_text_does_not_exist budget.amount
  end
end

Then(/^you will see all budgets as below$/) do |budgets|
  budgets.each do |budget|
    wait_for_text budget.month
    wait_for_text budget.amount
  end
end