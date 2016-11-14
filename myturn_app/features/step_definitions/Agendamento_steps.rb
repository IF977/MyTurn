Given(/^I am in my admin page$/) do
  visit'https://biliopaulista.herokuapp.com/login'
  @user = User.create!(
    :name => "renata",
    :email =>"rca14@cin.ufpe.br",
    :password => "teste",
    :activated => true
  )
  fill_in 'email', :with => 'rca14@cin.ufpe.br'  

  fill_in 'password', :with => 'teste'  

  click_button("Login")
  assert_current_path('/admin')
end
  
When(/^I press the button agendamento$/) do
  click_link("Agendamento") 
end
  
Then(/^I should see my agendamento list$/) do
  assert_current_path('/agendamento')
end

Then(/^I should click in novo agendamento$/) do
  click_link("Novo Agendamento")
end

And(/^I fill the blanks$/) do
  fill_in 'empresa', :with => 'Embare'
end

When(/^I click in save agendamento$/) do
  click_button("Salvar Agendamento")
end

Then(/^I should see a message of confirmation$/) do
  assert_current_path('/agendamento/525526')
end