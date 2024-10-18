@id:2 @EliminarUsuario
Feature: PetStore API User Deletion

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Eliminar un usuario sin autenticación
    Given def username = 'testUser'
    And path 'user', username
    When method DELETE
    Then status 200
