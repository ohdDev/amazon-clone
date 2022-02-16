class UserItemSummaryJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    @items = Item.where(Item[:created_at] < 1.days.ago)
    @users = User.where(User[:created_at] < 1.days.ago)

    SummaryMailer.with(users: @users, items: @items).new_summary_mail(users,items).deliver_now



    
  end
end
