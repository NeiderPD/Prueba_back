Feature: Obtener lista de usuarios

  Scenario: Obtener todos los usuarios
    Given url baseUrl + '/usuarios'
    When method GET
    Then status 200
    And match response.usuarios == '#[]'
    And match response.quantidade == '#number'