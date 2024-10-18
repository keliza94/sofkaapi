@id:1 @EditarUsuario
Feature: PetStore API User Signup

  Background:
    * url 'https://petstore.swagger.io/v2/'

  Scenario: Actualizar el nombre y el correo del usuario
    Given def username = 'testUser'
    And request {id: 1234,username:'testUser',firstName:'Carlos',lastName:'medina',email:'carlos.medina@gmail.com',password:'pass123',phone:'1234567890',userStatus:0}
    And path 'user', username
    When method GET
    Then status 200
    And  match response.id == 1234

