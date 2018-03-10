Feature: Capybara practices
  Scenario Outline: Users should be able to login to salesforce using valid credentials
    Given I navigate to Login page
    When I login as "<User Name>" with password "<Password>"
    Then I should login successfully

    Examples:
      | User Name                      | Password   |
      | cst_analyst@jalasoft.com.aut02 | Control123 |

  Scenario Outline:  User should be able go to Main app
    Given I navigate to Login page
    When I login as "<User Name>" with password "<Password>"
      And I go to main app
    Then I should display main app page

    Examples:
    | User Name                      | Password   |
    | cst_analyst@jalasoft.com.aut02 | Control123 |

  Scenario:
    Given I am logged to salesforce
      And I go to main app
    When I create an object computer with the follow information
      | Type        | Computer         |
      | Name        | cpu2            |
      | Description | some description |
    Then the object computer should be created