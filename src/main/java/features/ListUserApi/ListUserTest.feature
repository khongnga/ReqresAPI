#Author: Lan Anh
@ListUser
Feature: List User Test

  @MainCase
  Scenario Outline: Check response when send request successfully
    Given I have "<URL>" and Method
    When I send list user request
    Then I check <StatusCode> correctly
    And I check page number correctly

    Examples: 
      | URL                                | StatusCode |
      | https://reqres.in/api/users?page=2 |        200 |

   
  