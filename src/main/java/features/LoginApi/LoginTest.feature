#Author: Lan Anh
@LoginUser
Feature: Login User Test

  @MainCase
  Scenario Outline: Check response when send request successfully
    Given I have "<URL>" and Method and "<RequestBody>"
    When I send register user request
    Then I check <StatusCode> of register api correctly
    And The response returns token

    Examples: 
      | URL                         | StatusCode | RequestBody                       |
      | https://reqres.in/api/login |        200 | //LoginApi//LoginRequestBody.json |

  @ValidationCase
  Scenario Outline: Validate response
    Given I have url and Method and request body with "<FieldName>" and "<Value>"
      | URL                         | RequestBody                       |
      | https://reqres.in/api/login | //LoginApi//LoginRequestBody.json |
      
    When I send login request
    Then I check <StatusCode> and "<ErrorMessage>" of login api correctly

    Examples: 
      | FieldName | Value                    | StatusCode | ErrorMessage              |
      | email     | missing                  |        400 | Missing email or username |
      | email     | eve.holt@reqres.infasdaf |        400 | user not found            |
      | password  | missing                  |        400 | Missing password          |
      | password  | cityslickadsfgfds        |        400 | Invalid password          |
