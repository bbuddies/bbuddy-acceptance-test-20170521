When(/^query date as (startDate \d+-\d+-\d+ and endDate \d+-\d+-\d+)$/) do |queryDate|
  touch 'BudgetSummary'
  touch 'Query'
  clear_then_enter_text 'startDate', queryDate.startDate
  clear_then_enter_text 'endDate', queryDate.endDate
  touch 'Seach'
end

Then(/^you will get summary amount is (\d+)$/) do |amount|
  wait_for_text amount
end