class User < ApplicationRecord

	has_secure_password

	validates :auth_token,
						:uniqueness => true
	validates :first_name,
						:presence => true
	validates :last_name,
						:presence => true
	validates :email,
						:uniqueness => { 
							case_sensitive: false
						},
						:format => { 
							with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
							on: :create
						}

	before_create :set_defaults

	def stripped
		attributes.slice('id', 'first_name', 'last_name', 'admin_level')
	end

	def set_defaults
		self.admin_level ||= 0
		self.generate_authentication_token!
	end

	def generate_authentication_token!
		begin
			self.auth_token = Devise.friendly_token
		end while self.class.exists?(auth_token: auth_token)
	end

end
