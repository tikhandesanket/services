class OrderMailer < ActionMailer::Base
  default from: 'notifications@example.com'
  def new_order_email
    @order = params[:order]
    mail(from: 'notifications@example.com',to: "sanket.tikhande@rws.com", subject: "You got a new order!")
  end
end
