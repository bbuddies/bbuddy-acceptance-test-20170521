When(/^query date as startDate (\d+-\d+-\d+) and endDate (\d+-\d+-\d+)$/) do |startDate, endDate|
  touch 'Budgets'
  touch 'Query'
  clear_then_enter_text 'startDate', startDate
  clear_then_enter_text 'endDate', endDate
  touch 'Query'
end

Then(/^you will get summary amount is (\d+)$/) do |amount|
  wait_for_text amount
end