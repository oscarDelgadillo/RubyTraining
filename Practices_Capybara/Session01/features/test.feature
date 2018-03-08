Feature: Capybara session01
  Scenario Outline: Users should be able to login using valid credentials
    Given I navigate to Login page
    When I login as "<User Name>" with password "<Password>"
    Then I should login successfully

    Examples:
      | User Name                      | Password   |
      | cst_analyst@jalasoft.com.aut02 | Control123 |