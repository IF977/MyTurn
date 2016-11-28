@javascript
Feature: Perfil
    As a user,
    In order to keep my personal's informations updated in the system,
    I need to update some informations.

Scenario: Sign up page
    Given I am in the homepage
    Then I make my loggin
	Then I  press editar
	And I  update my informations
	Then I press update
	