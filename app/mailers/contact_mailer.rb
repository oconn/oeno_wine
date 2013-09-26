class ContactMailer < ActionMailer::Base
  def new_message(message)
    @message = message
    mail(:to => "matthew.j.oconnell1@gmail.com",
        :subject => "Oeno Website Contact")
  end
end
