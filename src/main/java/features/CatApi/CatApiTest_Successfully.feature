#Author: NgaKT
@Cat
Feature: Cat Api Test

  @Maincase
  Scenario Outline: Check response when send request successfully
    #Given I have "<URL>" and Method and "<RequestBodyName>" of cat api
    Given I have url and Method and request body of cat api
      | URL                                | RequestBodyName                  | StatusCode |
      | https://api.thecatapi.com/v1/votes | \\CatApi\\CatApiRequestBody.json |        201 |
    When I send cat request
    Then I check <StatusCode> of cat api correctly

    Examples: 
      | URL                                | RequestBodyName                  | StatusCode |
      | https://api.thecatapi.com/v1/votes | \\CatApi\\CatApiRequestBody.json |        201 |