@login
Feature: Budgets

  Scenario: Enter negative amount value
    When add budget as month 2017-05 and amount -1000
    Then you will see alert message "invalid amount value"