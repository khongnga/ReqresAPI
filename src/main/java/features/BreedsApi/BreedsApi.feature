#Author: NgaKT
@Breeds
Feature: Breeds Api Test

  @Maincase
  Scenario Outline: Check response when send request successfully
    Given I have url and Method of breeds api
      | URL                                 |
      | https://api.thecatapi.com/v1/breeds |
    When I send breeds request
    Then I check <StatusCode> of breeds api correctly

    Examples: 
      | StatusCode | NumberOfCats |
      |        200 |           67 |