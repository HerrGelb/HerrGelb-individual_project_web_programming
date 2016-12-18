Feature: NewPatient's  Page

  As a user
  I want to be able to create my profile in the database
  
  
  Scenario: Create patient with all information filled in
    Given I'm on the new patient page
    When I fill in all information with passwords matching and click to create a patient account
    Then I should be redirected to the main page
    
  Scenario: Create patient with name missing
    Given I'm on the new patient page
    When I fill in all information except name with passwords matching and click to create a patient account
    Then I should see some errors on the page
  
  Scenario: Create patient with email missing
    Given I'm on the new patient page
    When I fill in all information except email with passwords matching and click to create a patient account
    Then I should see some errors on the page

  #Scenario: Clicking back button
  #  Given I'm on the new patient page
  #  When I click the back button
  #  Then I should be redirected to the main page