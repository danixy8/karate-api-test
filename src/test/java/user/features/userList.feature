@feature-list-users
Feature: Verify the number of elements in the "data" property of the response

  Scenario: Verify that the "data" property has 6 elements
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And match response.page == 2
    And match response.data contains '#[6]'
    And match response.data[0].id != null
    And match response.data[0].id == '#number'