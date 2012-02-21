# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Articles::Application.initialize!

Articles::Application.configure do
	config.action_mailer.delivery_method = :smtp

	config.action_mailer.smtp_settings = {
		address: "smtp.gmail.com",
		port: 587,
		domain: "localhost.localdomain",
		authentication: "plain",
		user_name: "davis.balgley",
		password: "foes305-vortex",
		enable_starttls_auto: true
	}
end
