#on the homepage
Given(/^I'm on the main page$/) do
  visit(root_path)
end

When(/^I click on the button for doctors$/) do
  click_link "If I'm a Doctor"
end

Then(/^I should be able to see the doctor's page$/) do
  visit(doctors_path)
end

When(/^I click on the button for patients$/) do
  click_link "If I'm a Patient"
end

Then(/^I should be able to see the patient's page$/) do
  visit(patients_path)
end


# Patient's Page
Given(/^I'm on the patient's page$/) do
  visit(patients_path)
end

When(/^I click on the button for acute$/) do
  click_link "Acute"
end

When(/^I click on the button for new patient$/) do
  click_link "New Patient"
end


Then(/^I should be able to see the new patient page$/) do
  visit(new_patient_path)
end

Then(/^I should be able to see the acute test page$/) do
  visit(acute_test_path)
end


#on the new patient page
Given(/^I'm on the new patient page$/) do
  visit(new_patient_path)
end

When(/^I fill in all information with passwords matching and click to create a patient account$/) do
  fill_in 'Name', :with => "Patient"
  fill_in 'Email', :with => "patient@personal.com"
  fill_in 'Password', :with => "pword"
  click_button "Create Patient"
end

When(/^I fill in all information except name with passwords matching and click to create a patient account$/) do
  fill_in 'Email', :with => "patient@personal.com"
  fill_in 'Password', :with => "pword"
  click_button "Create Patient"
end

When(/^I fill in all information except email with passwords matching and click to create a patient account$/) do
  fill_in 'Name', :with => "Patient"
  fill_in 'Password', :with => "pword"
  click_button "Create Patient"
end

Then(/^I should have created a new patient successfully$/) do
  visit(patient_path)
end

# Doctor's and Patient's Pages
When(/^I click on the button for home page$/) do
  click_link "Homepage"
end

When(/^I click the back button$/) do
  click_link "Back"
end

Then(/^I should be redirected to the main page$/) do
  visit(root_path)
end

Then(/^I should see some errors on the page$/) do
  assert page.has_css?('div.field_with_errors')
end



#add some data to the test
Given(/^I have created a patient/)do
  @doctor = create(:doctor, id: "1")
  @patient = create(:patient)
end


#chronic records page
Given(/^I'm on the chronic record page$/) do
  visit(chronics_path)
end


When(/^I click on the button for new chronic record$/) do
  click_link "New Chronic"
end


Then(/^I should be able to see the new chronic page$/) do
  visit(new_chronic_path)
end

#new chronic page
Given(/^I'm on the new chronic page$/) do
  visit(new_chronic_path)
end

When(/^I fill in all information and click to create a chronic record$/) do
  fill_in 'Patient', :with => "1"
  fill_in 'Date created', :with => DateTime.current
  fill_in 'Discomfort score', :with => "4"
  click_button "New Chronic"
end


Then(/^I should have created a new chronic record successfully$/) do
  visit(chronic_path)
end
