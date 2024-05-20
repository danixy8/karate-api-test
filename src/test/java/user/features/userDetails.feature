@feature-get-user
Feature: fetching User Details
  @prueba-1
  Scenario: testing the get call for User Details
    Given url 'https://reqres.in/api'
    And path 'users/2'
    When method GET
    Then status 200

  @prueba-2
  Scenario: Verify error response when sending a string instead of a number to the API endpoint
    Given url 'https://reqres.in/api'
    And path 'users/p'
    When method GET
    Then status 404
