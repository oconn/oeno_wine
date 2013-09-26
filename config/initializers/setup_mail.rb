ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :domain               => "heroku.com",
  :user_name            => ENV['SENDGRID_USERNAME'],
  :password             => ENV['SENDGRID_PASSWORD'],
  :authentication       => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "https://quiet-cove-7726.herokuapp.com/news"