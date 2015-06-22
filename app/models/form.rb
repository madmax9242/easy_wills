class Form < ActiveRecord::Base
	field :gh_ami_cc_only, gh_ami_cc_only: String
	belongs_to :user
end