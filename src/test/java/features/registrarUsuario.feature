Feature: Registrar nuevo usuario

  Background:
    * def userData = call read('classpath:users/utils/registrarUsuario.feature')

  Scenario: Registrar usuario válido
    Given url baseUrl + '/usuarios'
    And request userData
    When method POST
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id == '#string'