class User < ActiveRecord::Base
	has_many :recipe_books
	has_many :recipes, through: :recipe_books

	validates :email, :username, :presence: true, uniqueness: true

	def password
		@password ||= BCrypt::Password.new(hashed_password)
	end

	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.hashed_password = @password
	end

	def self.authenticate(inputted_email, inputted_password)
		user = self.find_by(email: inputted_email)
		if user
			if user.password == inputted_password
				user
			end
		else
			nil
		end
	end
end
