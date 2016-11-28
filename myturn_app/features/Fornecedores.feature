@javascript
Feature: Fornecedores
    As a user,
    In order to show which company I work for,
    I need to register the company.

Scenario: Fornecedores page
    Given I am in the homepage
	Then I  press Fornecedores link
	And I  fill the razaosocial camp
	And I fill the cnpj camp
	When I press salvar
    Then I should see my company registered