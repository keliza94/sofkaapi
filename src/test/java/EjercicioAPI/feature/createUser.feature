@id:1 @CrearNuevoUsuario
Feature: PetStore API User Signup

  Background:
    * url 'https://petstore.swagger.io/v2/user'

  Scenario: Crear un nuevo usuario en PetStore
    Given request {id: 1234,username:'testUser',firstName:'John',lastName:'Doe',email:'john.doe@mail.com',password:'pass123',phone:'1234567890',userStatus:0}
    When method POST
    Then status 200
    And match response.code == 200