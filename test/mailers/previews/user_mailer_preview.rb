class UserMailerPreview < ActionMailer::Preview
  def orderconf_email
    UserMailer.orderconf_email(Order.first)
  end
end