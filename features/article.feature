Feature:
	@wip
	Scenario:
		Given I am an admin
		When I am on the admin dashboard
		And I click on the "New Article" button
		And I fill the "article_title" text field with "TestTitle"
		And I fill the "article_body" text area with "Something"
		And I click on the "Create Article" button
		Then My article should be visible on the home page
