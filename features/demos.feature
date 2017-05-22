@login
Feature: Demos

  Scenario: Add a demo
    When add demo as month 2017-05 and amount 1000
    Then you will see all demos as below
      | month   | amount |
      | 2017-05 | 1000   |
