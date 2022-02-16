class UserItemSummaryJob < ApplicationJob
  queue_as :default

<<<<<<< HEAD
  def perform()
    # Do something later

    items = Item.where(Item[:created_at] < 1.days.ago)
    users = User.where(User[:created_at] < 1.days.ago)


    SummaryMailer.with(users: users, items: items).new_summary_mail.deliver_now

=======
  def perform(*args)
    # Do something later
>>>>>>> 560714fa9d8d9fdea62afe77b6196f97cc8e39f7
  end
end
