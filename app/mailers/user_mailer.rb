class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: t("static_pages.account_activation.mail")
  end

  def password_reset
    # @greeting = "Hi"

    mail to: user.email
  end
end
