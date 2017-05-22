When(/^add budget as month "([^"]*)" and amount "([^"]*)"$/) do |arg1, arg2|
  touch 'Budgets'
  touch 'Add'
  clear_then_enter_text 'month', arg1
  clear_then_enter_text 'amount', arg2
  touch 'Save'
end

Then(/^there is an error message for ([^"]*)$/) do |msg|
  wait_for_text msg
end