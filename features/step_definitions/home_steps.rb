When /^I go to the homepage$/ do
  visit root_path
end

Then /^I should read "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

