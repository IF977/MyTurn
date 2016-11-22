@javascript
Feature: Login
    As a user,
    In order to keep my personal's informations in the system,
    I need to login.

Scenario: Sign up page
    Given I am in the sign up page
	Then I  fill the email camp
	And I  fill the senha camp 
	When I press entrar
	Then I should see my homepage on the site