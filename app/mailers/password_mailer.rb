class PasswordMailer < ApplicationMailer
  def send_password_email user
    @user = user
    mail to: @user.email, subject: t("password.reset_mail")
  end
end
