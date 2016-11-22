Given(/^I m in my homepage $/) do
  visit'https://biliopaulista.herokuapp.com'
  @user = User.create!(
    :name => "renata",
    :email =>"rca14@cin.ufpe.br",
    :password => "teste",
    :activated => true
  )
  
  fill_in 'email', :with => 'rca14@cin.ufpe.br'  

  fill_in 'password', :with => 'teste'  

  click_button("Entrar")
  assert_current_path('/admin')
end

Then(/^I press the button consulta$/) do
  click_link("Consulta") 
end

Then(/^I should see my entregas list$/) do
  assert_current_path('/entregas')
end

Then(/^I should click in agendar entrega$/) do
click_link("Agendar Entrega")
end
