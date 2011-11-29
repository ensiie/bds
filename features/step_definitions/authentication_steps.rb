
Given /^I am an admin$/ do
	password="qwertyuiop"
	email="user@example.com"
	User.create :email => email, :password => password, :password_confirmation => password
	visit new_user_session_path
	fill_in 'user_email', :with => email
	fill_in 'user_password', :with => password
	click_button 'Sign in'
end

