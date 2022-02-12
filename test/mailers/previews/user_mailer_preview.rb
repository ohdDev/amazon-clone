# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def welcome_mail
        user = User.new(name: 'Mohamed ', email: 'mohamed@example.com' , password: '123' , login: '2022')
        
        UserMailer.with(user: user).welcome_mail

    end

end
