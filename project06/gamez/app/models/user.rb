class User < ActiveRecord::Base
	  acts_as_authentic do |c|
	    c.login_field = :username
	  end
	attr_accessor :password_confirmation
end
