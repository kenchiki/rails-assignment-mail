class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@example.com', to: 'admin@example.com'
  layout 'mailer'
end
