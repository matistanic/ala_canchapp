class RegistrationMailer < ApplicationMailer
    default from: "Mailgun Test Project <postmaster@" + 'alacanchapp.tk' + ">"

    def send_email(message)
      @message = message
      mail(to: @message[:to], subject: 'Mailgun message via SMTP')
    end
end