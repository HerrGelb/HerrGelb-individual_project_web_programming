Feature: chronic records

	The user should be able to create and delete chronic records



  Scenario: Go to create a chronic record
  	Given I have created a patient
  	Given I'm on the chronic record page
  	When I click on the button for new chronic record
  	Then I should be able to see the new chronic page


  	