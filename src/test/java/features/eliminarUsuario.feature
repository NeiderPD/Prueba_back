Feature: Eliminar usuario

  Background:
    * def newUser = call read('classpath:users/utils/eliminarUsuario.feature')
    * def userId = newUser.response._id

  Scenario: Eliminar usuario existente
    Given url baseUrl + '/usuarios/' + userId
    When method DELETE
    Then status 200
    And match response.message == 'Registro excluído com sucesso'