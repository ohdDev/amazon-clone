class UserItemSummaryJob < ApplicationJob
  queue_as :default


  def perform()
    # Do something later

    items = Item.where("Date(created_at) = ?", Date.today)
    users = User.where("Date(created_at) = ?", Date.today)


    SummaryMailer.with(users: users, items: items).new_summary_mail.deliver_now

end

end
