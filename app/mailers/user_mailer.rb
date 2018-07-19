class UserMailer < ApplicationMailer
  require 'rest-client'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #

  API_KEY = ENV['MAILGUN_API_KEY']
  MAIL_DOMAIN = ENV['MAILGUN_DOMAIN']
  API_URL = "https://api:#{API_KEY}@api.mailgun.net/v2/#{MAIL_DOMAIN}"

  def account_activation(user)
    @user = user
    # mail to: user.email, from: "noreply@spotyfi.com", subject: "Account activation"


    RestClient.post API_URL+"/messages",
        :from => "ev@#{MAIL_DOMAIN}",
        :to => @user.email,
        :subject => "Spotyfi account activation",
        :text => render_to_string template: "user_mailer/account_activation",
        :html => "<b>HTML</b> version of the body!"
      end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
