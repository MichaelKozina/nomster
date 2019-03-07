class ApplicationMailer < ActionMailer::Base
  default from: 'email.mailer.test@gmail.com'
  layout 'mailer'
end
