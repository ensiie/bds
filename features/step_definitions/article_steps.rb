When /^I am on the admin dashboard$/ do
	visit admin_root_path
end

When /^I click on the "([^"]*)" button$/ do |name|
	click_button name
end

When /^I fill the "([^"]*)" text (field|area) with "([^"]*)"$/ do |arg1, arg2, arg3|
	fill_in arg1, :with => arg3
	instance_variable_set "@#{arg1}", arg3
end

Then /^My article should be visible on the home page$/ do
	visit root_path
	page.should have_content @article_title
	page.should have_content @article_body
end

