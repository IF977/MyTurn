Given(/^I am in the sign up page$/) do
  visit'https://biliopaulista.herokuapp.com/signup'
  @user = User.create!(
    :name => "renata",
    :email =>"rca14@cin.ufpe.br",
    :password => "teste",
    :activated => true
  )
end

Then(/^I  fill the email camp$/) do
  fill_in 'email', :with => 'rca14@cin.ufpe.br'  
end

Then(/^I  fill the senha camp$/) do
  fill_in 'password', :with => 'teste'  
end

When(/^I press entrar$/) do
  click_button("Entrar")
end

Then(/^I should see my homepage on the site$/) do
  visit 'https://biliopaulista.herokuapp.com'
end