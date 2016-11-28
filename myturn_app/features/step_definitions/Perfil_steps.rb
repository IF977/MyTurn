Given(/^I am in the homepage$/) do
  visit 'https://biliopaulista.herokuapp.com'
  click_link("Entrar")
  assert_current_path('/users')
end
Then(/^I  fill the email camp$/) do
  fill_in 'email', :with => 'teste@teste.com'
  fill_in 'password', :with => 'teste'
  click_button("Log in")
end
Then(/^I  press editar button$/) do
  assert_current_path('/users/id/edit')  
end
And(/^I  fill the name camp$/) do
  fill_in 'name', :with => 'teste'  
end

Then (/^I  press Salvar Alterações$/) do
  assert_current_path('/users/id/edit')  
end 
