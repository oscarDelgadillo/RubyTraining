require 'capybara/rspec'

login_page = Login_page.new

Given(/^I navigate to Login page$/) do
  login_page.open_login_page
end

When(/^I login as "([^"]*)" with password "([^"]*)"$/) do |username, password|
  $home_page = login_page.insert_credentials(username, password)
end

Then(/^I should login successfully$/) do
  expect($home_page.is_open).to be_truthy
end

And(/^I go to main app$/) do
  @main_app_page = $home_page.go_to_main_app
end

Then(/^I should display main app page$/) do
  expect(@main_app_page.is_open).to be_truthy
end

Given(/^I am logged to salesforce$/) do
  step "I navigate to Login page"
  step "I login as \"#{$default_user}\" with password \"#{$default_password}\""
end

When(/^I create an object computer with the follow information$/) do |table|
  computer = table.rows_hash
  @cpu = @main_app_page.create_computer(computer)
end

Then(/^the object computer should be created$/) do
  expect(find(:xpath, ".//span[text()='#{@cpu.Name}']")).to be_truthy
  expect(find(:xpath, ".//span[text()='#{@cpu.Description}']")).to be_truthy
end