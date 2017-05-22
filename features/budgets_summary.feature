@login
Feature: Budgets_Summary_Practices

  Background:
    Given existing budgets
      | month   | amount |
      | 2017-05 | 1000   |
      | 2017-06 | 1000   |
      | 2017-08 | 1000   |

  Scenario: Get a budget summary when query an completed single month
    When query date as startDate 2017-05-01 and endDate 2017-05-31
    Then you will get summary amount is 1000

  Scenario: Get a budget summary when query between a solar month (31)
    When query date as startDate 2017-05-01 and endDate 2017-05-30
    Then you will get summary amount is 967

  Scenario: Get a budget summary when query between a lunar month (30)
    When query date as startDate 2017-06-01 and endDate 2017-06-29
    Then you will get summary amount is 966