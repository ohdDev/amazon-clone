# Preview all emails at http://localhost:3000/rails/mailers/summary_mailer
class SummaryMailerPreview < ActionMailer::Preview
 def new_summary_mail
    item = Item.new(name: "item1", description: "item1 des", price: 78.5)
    user = User.new(name: "ohoud", email: "ohoud@email.co")
    items=[]
    users=[]
    items.push(item)
    users.push(user)

    SummaryMailer.with(users: users, items: items).new_summary_mail

    end
end
