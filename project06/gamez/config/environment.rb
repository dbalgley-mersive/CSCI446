# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gamez::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY']  = '6Lek-c8SAAAAAG_f8F0D4YTNbi2oi9bas9vwoYN_'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6Lek-c8SAAAAAHZTLiLTEKN2NnsfsfcANRI0Lx2i'
