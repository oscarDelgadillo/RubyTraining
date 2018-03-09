require 'Practices_Capybara/Session01/features/support/pages/login.rb'

Given(/^I navigate to Login page$/) do
  visit(Capybara.app_host)
end

When(/^I login as "([^"]*)" with password "([^"]*)"$/) do |username, pass|
  login_page = Login.new
  login_page.insert_username(username)

end

Then(/^I should login successfully$/) do
  pending
end