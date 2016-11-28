Given(/^I m in my homepage $/) do
  visit'https://biliopaulista.herokuapp.com'
  click_link("Fornecedores")
  assert_current_path('/fornecedors')
end

Then(/^I press the button novo fornecedor$/) do
  click_link("Novo Fornecedor") 
end

Then(/^I should see fornecedor's camp$/) do
  assert_current_path('/fornecedors/new')
end

Then(/^I should click in create fornecedor$/) do
click_link("Create Fornecedor")
end
