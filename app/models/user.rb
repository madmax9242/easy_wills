class User < ActiveRecord::Base
	authenticates_with_sorcery!

	validates :password, length: { minimum: 7 }
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	validates :email, uniqueness: true

	has_one :form, dependent: :destroy

	has_one :first_scenario
	has_one :second_scenario
	has_one :third_scenario
	has_one :fourth_scenario


	def logged_in? 
		@user
	end

	# def formExists?
	# 	@user
	# end
end
