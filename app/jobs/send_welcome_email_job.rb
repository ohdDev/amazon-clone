class SendWelcomeEmailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "-------------------New User Added---------------------"
    UserMailer.with(user: user).welcome_email.deliver_now
    puts "------------------------------------------------------"
  end
end
