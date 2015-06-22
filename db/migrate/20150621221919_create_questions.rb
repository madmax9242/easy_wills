class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :forms do |t|
        t.integer :user_id
        t.integer :gh_ami_cc_only, default: 0
        t.integer :gh_ami_cc_plus, default: 0
        t.integer :gh_ami_reg_med, default: 0
        t.integer :gh_ami_invasive, default: 0
        t.integer :gh_ami_respirator, default: 0
        t.integer :gh_ami_dialysis, default: 0
        t.integer :gh_ami_cpr, default: 0
        t.integer :gh_bi_cc_only, default: 0
        t.integer :gh_bi_cc_plus, default: 0
        t.integer :gh_bi_reg_med, default: 0
        t.integer :gh_bi_invasive, default: 0
        t.integer :gh_bi_respirator, default: 0
        t.integer :gh_bi_dialysis, default: 0
        t.integer :gh_bi_cpr, default: 0
        t.integer :dh_ami_cc_only, default: 0
        t.integer :dh_ami_cc_plus, default: 0
        t.integer :dh_ami_reg_med, default: 0
        t.integer :dh_ami_invasive, default: 0
        t.integer :dh_ami_respirator, default: 0
        t.integer :dh_ami_dialysis, default: 0
        t.integer :dh_ami_cpr, default: 0
        t.integer :dh_bi_cc_only, default: 0
        t.integer :dh_bi_cc_plus, default: 0
        t.integer :dh_bi_reg_med, default: 0
        t.integer :dh_bi_invasive, default: 0
        t.integer :dh_bi_respirator, default: 0
        t.integer :dh_bi_dialysis, default: 0
        t.integer :dh_bi_cpr, default: 0
        t.integer :esmc_ami_cc_only, default: 0
        t.integer :esmc_ami_cc_plus, default: 0
        t.integer :esmc_ami_reg_med, default: 0
        t.integer :esmc_ami_invasive, default: 0
        t.integer :esmc_ami_respirator, default: 0
        t.integer :esmc_ami_dialysis, default: 0
        t.integer :esmc_ami_cpr, default: 0
        t.integer :esmc_bi_cc_only, default: 0
        t.integer :esmc_bi_cc_plus, default: 0
        t.integer :esmc_bi_reg_med, default: 0
        t.integer :esmc_bi_invasive, default: 0
        t.integer :esmc_bi_respirator, default: 0
        t.integer :esmc_bi_dialysis, default: 0
        t.integer :esmc_bi_cpr, default: 0
        t.integer :nhi_ami_cc_only, default: 0
        t.integer :nhi_ami_cc_plus, default: 0
        t.integer :nhi_ami_reg_med, default: 0
        t.integer :nhi_ami_invasive, default: 0
        t.integer :nhi_ami_respirator, default: 0
        t.integer :nhi_ami_dialysis, default: 0
        t.integer :nhi_ami_cpr, default: 0
        t.integer :nhi_bi_cc_only, default: 0
        t.integer :nhi_bi_cc_plus, default: 0
        t.integer :nhi_bi_reg_med, default: 0
        t.integer :nhi_bi_invasive, default: 0
        t.integer :nhi_bi_respirator, default: 0
        t.integer :nhi_bi_dialysis, default: 0
        t.integer :nhi_bi_cpr, default: 0

    	# t.text :gh_ami, array: true, default: []
    	# t.text :gh_bi, array: true, default: []
    	# t.text :dh_ami, array: true, default: []
    	# t.text :dh_bi, array: true, default: []
    	# t.text :esmc_ami, array: true, default: []
    	# t.text :esmc_bi, array: true, default: []
    	# t.text :nhi_ami, array: true, default: []
    	# t.text :nhi_bi, array: true, default: []

    end
    #add_index :forms, :user_id
    add_foreign_key :forms, :users
    # Column Guide- gh = "good health" (#1), dh = "deteriorating health" (#2), esmc = "end-stage medical condition"
    # nhi = no hope for improvement, ami = acute medical illness that may be treated, bi= brain illness
  end
end
