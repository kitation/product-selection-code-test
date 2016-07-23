Feature: Basket

@javascript
Scenario: Submitting a basket
    As a user
    When I select some channels
    And checkout my basket
    Then I should see the confirmation page