class Form < ActiveRecord::Base
	belongs_to :user
	has_one :first_scenario
	has_one :second_scenario
	has_one :third_scenario
	has_one :fourth_scenario

	def formExists?
		@form
	end

	def compileForm
		@form = Form.new
		@form.gh_ami_cc_only = form.first_scenario.ami_cc_only 
        @form.gh_ami_cc_plus = form.first_scenario.ami_cc_plus 
        @form.gh_ami_reg_med = form.first_scenario.ami_reg_med 
        @form.gh_ami_invasive = form.first_scenario.ami_invasive 
        @form.gh_ami_respirator = form.first_scenario.ami_respirator 
        @form.gh_ami_dialysis = form.first_scenario.ami_dialysis
        @form.gh_ami_cpr = form.first_scenario.ami_cpr
        @form.gh_bi_cc_only = form.first_scenario.bi_cc_only 
        @form.gh_bi_cc_plus = form.first_scenario.bi_cc_plus
        @form.gh_bi_reg_med = form.first_scenario.bi_reg_med 
        @form.gh_bi_invasive = form.first_scenario.bi_invasive
        @form.gh_bi_respirator = form.first_scenario.bi_respirator 
        @form.gh_bi_dialysis = form.first_scenario.bi_dialysis
        @form.gh_bi_cpr = form.first_scenario.bi_cpr
        @form.dh_ami_cc_only = form.second_scenario.ami_cc_only
        @form.dh_ami_cc_plus = form.second_scenario.ami_cc_plus
        @form.dh_ami_reg_med = form.second_scenario.ami_reg_med
        @form.dh_ami_invasive = form.second_scenario.ami_invasive
        @form.dh_ami_respirator = form.second_scenario.ami_respirator
        @form.dh_ami_dialysis = form.second_scenario.ami_dialysis
        @form.dh_ami_cpr = form.second_scenario.ami_cpr
        @form.dh_bi_cc_only = form.second_scenario.bi_cc_only
        @form.dh_bi_cc_plus = form.second_scenario.bi_cc_plus
        @form.dh_bi_reg_med = form.second_scenario.bi_reg_med
        @form.dh_bi_invasive = form.second_scenario.bi_invasive
        @form.dh_bi_respirator = form.second_scenario.bi_respirator
        @form.dh_bi_dialysis = form.second_scenario.bi_dialysis
        @form.dh_bi_cpr = form.second_scenario.bi_cpr
        @form.esmc_ami_cc_only = form.third_scenario.ami_cc_only
        @form.esmc_ami_cc_plus = form.third_scenario.ami_cc_plus
        @form.esmc_ami_reg_med = form.third_scenario.ami_reg_med
        @form.esmc_ami_invasive = form.third_scenario.ami_invasive
        @form.esmc_ami_respirator = form.third_scenario.ami_respirator
        @form.esmc_ami_dialysis = form.third_scenario.ami_dialysis
        @form.esmc_ami_cpr = form.third_scenario.ami_cpr
        @form.esmc_bi_cc_only = form.third_scenario.bi_cc_only
        @form.esmc_bi_cc_plus = form.third_scenario.bi_cc_plus
        @form.esmc_bi_reg_med = form.third_scenario.bi_reg_med
        @form.esmc_bi_invasive = form.third_scenario.bi_invasive
        @form.esmc_bi_respirator = form.third_scenario.bi_respirator
        @form.esmc_bi_dialysis = form.third_scenario.bi_dialysis
        @form.esmc_bi_cpr = form.fourth_scenario.bi_cpr
        @form.nhi_ami_cc_only = form.fourth_scenario.ami_cc_only
        @form.nhi_ami_cc_plus = form.fourth_scenario.ami_cc_plus
        @form.nhi_ami_reg_med = form.fourth_scenario.ami_reg_med
        @form.nhi_ami_invasive = form.fourth_scenario.ami_invasive
        @form.nhi_ami_respirator = form.fourth_scenario.ami_respirator
        @form.nhi_ami_dialysis = form.fourth_scenario.ami_dialysis
        @form.nhi_ami_cpr = form.fourth_scenario.ami_cpr
        @form.nhi_bi_cc_only = form.fourth_scenario.bi_cc_only
        @form.nhi_bi_cc_plus = form.fourth_scenario.bi_cc_plus
        @form.nhi_bi_reg_med = form.fourth_scenario.bi_reg_med
        @form.nhi_bi_invasive = form.fourth_scenario.bi_invasive
        @form.nhi_bi_respirator = form.fourth_scenario.bi_respirator
        @form.nhi_bi_dialysis = form.fourth_scenario.bi_dialysis
        @form.nhi_bi_cpr = form.fourth_scenario.bi_cpr

        @form.save
	end
end