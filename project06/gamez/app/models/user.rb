class User < ActiveRecord::Base
	has_many :games, :dependent => :destroy
	belongs_to :role
	  acts_as_authentic do |c|
	    c.login_field = :username
	  end
	attr_accessor :password_confirmation
	def get_role
		self.role.name.downcase
	end
	def role_symbols
    	[role.name.downcase.to_sym]
  	end
end
