class SummaryMailer < ApplicationMailer
    def new_summary_mail
        @items = params[:items]
        @users = params[:users]
     
        mail(to: "admin@email.com", subject: "Daily Summary Of Items And Users!")     
  
    end
end
