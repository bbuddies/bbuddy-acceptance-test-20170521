Then(/^you will see alert message "([^"]*)"$/) do |message|
  wait_for_text message
end