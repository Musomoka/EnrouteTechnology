class ContactMailer < ApplicationMailer

    def contact_email(name, email, body)
        @name = name
        @email = email
        @message = message`enter code here`

        mail(from: email, subject: 'Contact Request')
    end
end
