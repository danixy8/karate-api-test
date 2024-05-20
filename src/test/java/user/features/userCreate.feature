@feature-create-user
Feature: Send POST request to endpoint /api/users

  Scenario: Send POST request to endpoint /api/users
    Given url 'https://reqres.in/api'
    And path 'users'
    And request { name: 'morpheus', job: 'leader' }
    When method POST
    Then status 201
    And match response == { name: 'morpheus', job: 'leader', id: '#string', createdAt: '#regex .+' }