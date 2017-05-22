@login
Feature: Budgets_Summary_Practices

  Background:
    Given existing budgets
      | month   | amount |
      | 2017-05 | 310   |
      | 2017-06 | 300   |
      | 2017-08 | 310   |

  Scenario: Get a budget summary when query an completed single month
    When query date as startDate 2017-05-01 and endDate 2017-05-31
    Then you will get summary amount is 310

  Scenario: Get a budget summary when query between a solar month (31)
    When query date as startDate 2017-05-01 and endDate 2017-05-30
    Then you will get summary amount is 300

  Scenario: Get a budget summary when query between a lunar month (30)
    When query date as startDate 2017-06-01 and endDate 2017-06-29
    Then you will get summary amount is 290

  Scenario: Get a budget summary when query between multiple months
    When query date as startDate 2017-05-10 and endDate 2017-06-10
    Then you will get summary amount is 320
  
  Scenario: Get a budget summary when query between not existed months
    When query date as startDate 2017-07-01 and endDate 2017-07-30
    Then you will get summary amount is 0