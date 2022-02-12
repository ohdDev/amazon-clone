class ItemMailer < ApplicationMailer
    def new_item_mail
        @item = params[:item]
        User.all.each do |user|
        mail(to: user.email, subject: "New Item Created!")
        end
    end
end
