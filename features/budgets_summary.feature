@login
Feature: Budgets_Summary_Practices

  Scenario: Add a 2017-05 budget
    When add budget as month 2017-05 and amount 1000
    Then you will see all budgets as below
      | month   | amount |
      | 2017-05 | 1000   |

  Scenario: Add a 2017-06 budget
    When add budget as month 2017-06 and amount 1000
    Then you will see all budgets as below
      | month   | amount |
      | 2017-06 | 1000   |

  Scenario: Add a 2017-08 budget
    When add budget as month 2017-08 and amount 1000
    Then you will see all budgets as below
      | month   | amount |
      | 2017-08 | 1000   |

  Scenario: Get a budget summary when query an completed single month
    Given existing budgets
      | month   | amount |
      | 2017-05 | 1000   |
      | 2017-06 | 1000   |
      | 2017-08 | 1000   |
    When query date as startDate 2017-05-01 and endDate 2017-05-31
    Then you will get summary amount is 1000

  Scenario: Get a budget summary when query between a solar month (31)
    Given existing budgets
      | month   | amount |
      | 2017-05 | 1000   |
      | 2017-06 | 1000   |
      | 2017-08 | 1000   |
    When query date as startDate 2017-05-01 and endDate 2017-05-30
    Then you will get summary amount is 967

  Scenario: Get a budget summary when query between a lunar month (30)
    Given existing budgets
      | month   | amount |
      | 2017-05 | 1000   |
      | 2017-06 | 1000   |
      | 2017-08 | 1000   |
    When query date as startDate 2017-06-01 and endDate 2017-06-29
    Then you will get summary amount is 966