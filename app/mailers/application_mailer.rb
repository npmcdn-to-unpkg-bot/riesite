class ApplicationMailer < ActionMailer::Base
  default from: "azevedo.rany@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://somosrie.herokuapp.com'
    mail(to: @user.email, subject: 'Bem vindo a Somos Rie')
  end
end
