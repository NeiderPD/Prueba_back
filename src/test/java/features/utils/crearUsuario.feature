Feature: Crear usuario para pruebas

  Scenario: Crear un nuevo usuario
    Given url baseUrl + '/usuarios'
    And request
      """
      {
        "nome": "Usuario Test Karate",
        "email": "karate_user_" + java.util.UUID.randomUUID() + "@test.com",
        "password": "123456",
        "administrador": "true"
      }
      """
    When method POST
    Then status 201
    And match responseMessage == "Cadastro realizado com sucesso"