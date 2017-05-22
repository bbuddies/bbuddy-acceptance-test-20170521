@login
Feature: Budgets

  Scenario: Add a budget
    When add budget as month 2017-05 and amount 1000
    Then you will see all budgets as below
      | month   | amount |
      | 2017-05 | 1000   |

  Scenario: Update a budget
    Given existing budgets
      | month   | amount |
      | 2017-05 | 1000   |
    When add budget as month 2017-05 and amount 300
    Then you will not see previous budgets
      | month   | amount |
      | 2017-05 | 1000   |
    And you will see all budgets as below
      | month   | amount |
      | 2017-05 | 300   |

  Scenario: Enter negative amount value
    When add budget as month 2017-05 and amount -1000
    Then you will see alert message "invalid amount value"
