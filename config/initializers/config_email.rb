Rails.application.configure do

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'ifreelance.com',
  user_name:            'ifreelancemail@gmail.com',
  password:             'unal123465',
  authentication:       'plain',
  enable_starttls_auto: true  }

end