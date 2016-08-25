class UserMailer < ApplicationMailer
  default from: "azevedo.rany@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://somosrie.herokuapp.com'
    mail(to: @user.email, subject: 'Bem vindo a Somos Rie', cc: 'azevedo.rany@gmail.com')
  end
end
