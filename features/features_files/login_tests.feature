Feature: Ecommerce login Feature
  Scenario: Verify ecommerce webpage loads
    Given Ecommerce webpage Login Page loads
    And Ecommerce Login Link is present loaded
    Then Correct Username and Password Should Login Successfully <username> <password>
    And My Account page should display after login
  Examples:
    | username              | password      |
    | kankanaadds@gmail.com | LambdaTest123 |
    | kankanaads@gmail.com  | LambdaTest123 |
    | kankanaads@gmail.com  | LambdaTest123 |

  