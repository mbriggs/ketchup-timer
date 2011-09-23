Feature:
  As a user
  I want to be able to measure time blocks
  So that I can manage my time more effectively

  Scenario: The start button
    Given I am a user
    When I am on the timer page
    Then I should see the start button
    And the start button should not be disabled

  Scenario: The cancel button
    Given I am a user
    When I am on the timer page
    Then I should see the start button
    And the cancel button should be disabled

  @javascript
  Scenario: Starting the timer
    Given I am a user
    When I am on the timer page
    And I click on the start button
    Then the timer should start
    And the start button should be disabled
    And the cancel button should not be disabled
