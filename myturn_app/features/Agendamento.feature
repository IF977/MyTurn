@javascript
Feature:Agendamento page

Scenario:Acess Agendamento page
	Given I m in my admin page
	When I press the button agendamento
	Then I should see my agendamento list
	Then I should click in novo agendamento
	And I fill the blanks
	When I click in save agendamento
	Then I should see a message of confirmation