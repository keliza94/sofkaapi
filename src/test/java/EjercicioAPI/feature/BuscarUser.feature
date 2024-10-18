@id:1 @BuscarElUsuario
Feature: PetStore API User Signup

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Obtener usuario por username
    Given def username = 'Admin'
    And path 'user', username
    When method GET
    Then status 200
    And match response.username == username




