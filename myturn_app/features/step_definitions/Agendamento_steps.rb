Given(/^I am in the signup page$/) do
  visit'https://myturn-rca14.c9users.io/signup'
  @user = User.create!(
    :name => "renata",
    :email =>"rca14@cin.ufpe.br",
    :password => "teste",
    :activated => true
  )
  

  click_button("Registrar")
  assert_current_path('https://myturn-rca14.c9users.io')
end
  
When(/^I press the Entrar button$/) do
  visit 'https://myturn-rca14.c9users.io/login'
  fill_in 'email', :with => 'rca14@cin.ufpe.br'  
  fill_in 'password', :with => 'teste'  
  click_link("Log in")
  assert_current_path('/agendamentos')
end
 
Then(/^I should see my agendamento list$/) do
  assert_current_path('/agendamentos')
end

Then(/^I should click in novo agendamento$/) do
  click_link("Fazer Novo Agendamento")
end

And(/^I fill the blanks$/) do
  fill_in 'fornecedor', :with => 'Embare'
end

When(/^I click in save agendamento$/) do
  click_button("Create Agendamento")
end

Then(/^I should see a message of confirmation$/) do
  assert_current_path('/agendamento/525526')
end