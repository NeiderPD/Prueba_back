Feature: Buscar usuario por ID

  Background:
    * def newUser = call read('src/test/java/features/buscarUsuarioPorId.feature')
    * def userId = newUser.response._id

  Scenario: Buscar usuario por ID
    Given url baseUrl + '/usuarios/' + userId
    When method GET
    Then status 200
    And match response._id == userId