Feature: Actualizar usuario

  Background:
    * def newUser = call read('classpath:users/utils/actualizarUsuario.feature')
    * def userId = newUser.response._id

  Scenario: Actualizar datos del usuario
    Given url baseUrl + '/usuarios/' + userId
    And request { "nome": "Usuario Actualizado", "email": newUser.email, "password": "123456", "administrador": "true" }
    When method PUT
    Then status 200
    And match response.message == 'Registro alterado com sucesso'