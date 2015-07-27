class Form < ActiveRecord::Base
	belongs_to :user
	has_one :first_scenario
	has_one :second_scenario
	has_one :third_scenario
	has_one :fourth_scenario

    def formExists?
	  @form
    end

    def self.compile_form 
        @form = Form.new
        @form.gh_ami_cc_only = form.first_scenario.ami_cc_only
        # @form = Form.create(gh_ami_cc_only: @first_scenario.ami_cc_only, gh_ami_cc_plus: "1")
        
        # @form = Form.new({gh_ami_cc_only: form.first_scenario.ami_cc_only, 
        # gh_ami_cc_plus: form.first_scenario.ami_cc_plus, 
        # gh_ami_reg_med: form.first_scenario.ami_reg_med, 
        # gh_ami_invasive: form.first_scenario.ami_invasive, 
        # gh_ami_respirator: form.first_scenario.ami_respirator, 
        # gh_ami_dialysis: form.first_scenario.ami_dialysis,
        # gh_ami_cpr: form.first_scenario.ami_cpr,
        # gh_bi_cc_only: form.first_scenario.bi_cc_only, 
        # gh_bi_cc_plus: form.first_scenario.bi_cc_plus,
        # gh_bi_reg_med: form.first_scenario.bi_reg_med,
        # gh_bi_invasive: form.first_scenario.bi_invasive,
        # gh_bi_respirator: form.first_scenario.bi_respirator, 
        # gh_bi_dialysis: form.first_scenario.bi_dialysis,
        # gh_bi_cpr: form.first_scenario.bi_cpr,
        # dh_ami_cc_only: form.second_scenario.ami_cc_only,
        # dh_ami_cc_plus: form.second_scenario.ami_cc_plus,
        # dh_ami_reg_med: form.second_scenario.ami_reg_med,
        # dh_ami_invasive: form.second_scenario.ami_invasive,
        # dh_ami_respirator: form.second_scenario.ami_respirator,
        # dh_ami_dialysis: form.second_scenario.ami_dialysis,
        # dh_ami_cpr: form.second_scenario.ami_cpr,
        # dh_bi_cc_only: form.second_scenario.bi_cc_only,
        # dh_bi_cc_plus: form.second_scenario.bi_cc_plus,
        # dh_bi_reg_med: form.second_scenario.bi_reg_med,
        # dh_bi_invasive: form.second_scenario.bi_invasive,
        # dh_bi_respirator: form.second_scenario.bi_respirator,
        # dh_bi_dialysis: form.second_scenario.bi_dialysis,
        # dh_bi_cpr: form.second_scenario.bi_cpr,
        # esmc_ami_cc_only: form.third_scenario.ami_cc_only,
        # esmc_ami_cc_plus: form.third_scenario.ami_cc_plus,
        # esmc_ami_reg_med: form.third_scenario.ami_reg_med,
        # esmc_ami_invasive: form.third_scenario.ami_invasive,
        # esmc_ami_respirator: form.third_scenario.ami_respirator,
        # esmc_ami_dialysis: form.third_scenario.ami_dialysis,
        # esmc_ami_cpr: form.third_scenario.ami_cpr,
        # esmc_bi_cc_only: form.third_scenario.bi_cc_only,
        # esmc_bi_cc_plus: form.third_scenario.bi_cc_plus,
        # esmc_bi_reg_med: form.third_scenario.bi_reg_med,
        # esmc_bi_invasive: form.third_scenario.bi_invasive,
        # esmc_bi_respirator: form.third_scenario.bi_respirator,
        # esmc_bi_dialysis: form.third_scenario.bi_dialysis,
        # esmc_bi_cpr: form.fourth_scenario.bi_cpr,
        # nhi_ami_cc_only: form.fourth_scenario.ami_cc_only,
        # nhi_ami_cc_plus: form.fourth_scenario.ami_cc_plus,
        # nhi_ami_reg_med: form.fourth_scenario.ami_reg_med,
        # nhi_ami_invasive: form.fourth_scenario.ami_invasive,
        # nhi_ami_respirator: form.fourth_scenario.ami_respirator,
        # nhi_ami_dialysis: form.fourth_scenario.ami_dialysis,
        # nhi_ami_cpr: form.fourth_scenario.ami_cpr,
        # nhi_bi_cc_only: form.fourth_scenario.bi_cc_only,
        # nhi_bi_cc_plus: form.fourth_scenario.bi_cc_plus,
        # nhi_bi_reg_med: form.fourth_scenario.bi_reg_med,
        # nhi_bi_invasive: form.fourth_scenario.bi_invasive,
        # nhi_bi_respirator: form.fourth_scenario.bi_respirator,
        # nhi_bi_dialysis: form.fourth_scenario.bi_dialysis,
        # nhi_bi_cpr: form.fourth_scenario.bi_cpr,
        # user_id: current_user.id
        # })
      # unless @form.is_empty?
      #   @form.save
      # end
    end
end