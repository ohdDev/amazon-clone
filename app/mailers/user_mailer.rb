class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        mail(to: "ohoud@email.com", subject: "Welcome email!")
    end
end
