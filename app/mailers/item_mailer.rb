class ItemMailer < ApplicationMailer
    def new_item_mail(users)
        @item = params[:item]
     
        mail(to: users.pluck(:email), subject: "New Item Created!")     
  
    end
end
