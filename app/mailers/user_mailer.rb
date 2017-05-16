class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def orderconf_email(order)
    @order = order
    @user = @order.user
    @url = "http://0.0.0.0:3000/order/#{order.id}"
    mail(to: @user.email, subject: "Your order has been confirmed (order number: #{order.id})")
  end
end
