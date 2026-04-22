Feature: Split-the-Bill Calculator

  As a group diner,
  I want a calculator that handles uneven splits and variable tip percentages,
  So that each person pays their fair share including their chosen tip.

  Scenario: Uneven split with variable tips
    Given the following people:
      | name      | amount | tipPercent |
      | Person A  | 40     | 15         |
      | Person B  | 60     | 20         |
    When the bill is calculated
    Then Person A's total with tip should be 46.00
    And Person B's total with tip should be 72.00
    And the total bill should be 100.00
    And the total tip should be 18.00
    And the grand total should be 118.00

  Scenario: Person with 0% tip pays exact share
    Given the following people:
      | name      | amount | tipPercent |
      | Person A  | 50     | 0          |
      | Person B  | 50     | 20         |
    When the bill is calculated
    Then Person A's total with tip should be 50.00
    And Person B's total with tip should be 60.00
    And the total bill should be 100.00
    And the total tip should be 10.00
    And the grand total should be 110.00

  Scenario: Equal split with same tip percentage
    Given the following people:
      | name      | amount | tipPercent |
      | Person A  | 30     | 10         |
      | Person B  | 30     | 10         |
      | Person C  | 30     | 10         |
    When the bill is calculated
    Then Person A's total with tip should be 33.00
    And Person B's total with tip should be 33.00
    And Person C's total with tip should be 33.00
    And the total bill should be 90.00
    And the total tip should be 9.00
    And the grand total should be 99.00
