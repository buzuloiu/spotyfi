class UserMailer < ActionMailer::Base

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #

  MAIL_DOMAIN = ENV['MAILGUN_DOMAIN']

  def account_activation(user)
    @user = user
    email = @user.email
    mail to: email, from: "paul@spotyfi.io", subject: "Account activation"
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail to: user.email, from: "paul@spotyfi.io", subject: "Password reset"
  end
end
