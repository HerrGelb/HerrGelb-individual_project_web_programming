Feature: patient page

  	As a user, I would like to go to the patient page, find myself, and take part in the acute test, or check my chronic profile. Also I should be able to create my profile.



  Scenario: Take acute test
    Given I'm on the patient's page
    When I click on the button for acute
    Then I should be able to see the acute test page
    
  Scenario: Go back to the homepage
    Given I'm on the patient's page
    When I click on the button for home page
    Then I should be redirected to the main page

  Scenario: Create a new patient
  	Given I'm on the patient's page
  	When I click on the button for new patient
  	Then I should be able to see the new patient page