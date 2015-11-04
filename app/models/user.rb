class User < ActiveRecord::Base

	has_secure_password
	before_validation :ensure_access_token!

	validates_presence_of :username, :password 
	validates_uniqueness_of :username, :email
	validates_format_of :email, with: /.+@.+\..+/
	validates :access_token, prescence: true, uniqueness: true

	def ensure_access_token!
		if self.access_token.blank?
			self.access_token = User.generate_token
		end
	end

	def self.generate_token
		token = SecureRandom.hex
		while User.exists?(access_token :token)
			token = SecureRandom.hex
		end
		token
	end



end
