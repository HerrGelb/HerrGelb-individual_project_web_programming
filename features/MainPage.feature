Feature: Main page

  As a user
  So that I can either give help as a doctor or receive it as a patient
  I want to be able to select between signing in as a doctor or a patient
  
  
  Scenario: Select Doctor
    Given I'm on the main page
    When I click on the button for doctors
    Then I should be able to see the doctor's page
    
  Scenario: Select Patient
    Given I'm on the main page
    When I click on the button for patients
    Then I should be able to see the patient's page