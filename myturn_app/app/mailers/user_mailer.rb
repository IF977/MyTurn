class UserMailer < ApplicationMailer
  
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Ativação da sua conta Bilio Paulista"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Recuperar Senha"
  end
end