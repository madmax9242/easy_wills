class User < ActiveRecord::Base
	authenticates_with_sorcery!

	validates :password, length: { minimum: 7 }
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	validates :email, uniqueness: true

	has_one :form, dependent: :destroy


	def logged_in? 
		@user
	end
end
