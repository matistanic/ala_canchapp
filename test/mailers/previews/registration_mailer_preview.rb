# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview
    def sample_email_preview
        RegistrationMailer.sample_email(User.last)
    end
end
