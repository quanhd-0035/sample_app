class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: t("static_pages.account_activation.mail")
  end

  def password_reset
    @user = user
    mail to: user.email, subject: t("static_pages.reset_new.text_1")
  end
end
