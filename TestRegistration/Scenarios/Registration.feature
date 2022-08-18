@Register
Feature: Register with Buggy Cars Rating

  Scenario Outline: Successful Registration
    Given I am on Register page
    When I click on rgister button "<Login>", First Name "<First Name>", Last Name "<Last Name>", Password "<Password>"
    Then I should see success message "Registration is successful"

    Examples:
      | Login      | First Name | Last Name | Password   |
      | TestAccount10 | FName      | LName     | Aa@123456 |

 @Negative1
  Scenario Outline: Duplicate Registetration
    Given I am on Register page
    When I click on rgister button "<Login>", First Name "<First Name>", Last Name "<Last Name>", Password "<Password>"
    Then I should be see error message "UsernameExistsException: User already exists"

    Examples:
      | Login      | First Name | Last Name | Password   |
      | TestAccount | FName      | LName     | Aa@123456 |
      
 @Negative2
  Scenario Outline: Invalid Passwords
    Given I am on Register page
    When I click on rgister button "<Login>", First Name "<First Name>", Last Name "<Last Name>", Password "<Password>"
    Then I should be see error message "UsernameExistsException: User already exists"

    Examples:
      | Login      | First Name | Last Name | Password   | Messsage |
      | TestAccount| FName      | LName     | a@123456  |
      | TestAccount| FName      | LName     | A@123456  |
      | TestAccount| FName      | LName     | Aa123456  | 