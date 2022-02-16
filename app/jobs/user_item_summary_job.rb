class UserItemSummaryJob < ApplicationJob
  queue_as :default

  def perform(users,items)
    # Do something later

  end
end
