class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :forms do |t|
        t.integer :user_id
        t.boolean :gh_ami_cc_only, default: false
        t.boolean :gh_ami_cc_plus, default: false
        t.boolean :gh_ami_reg_med, default: false
        t.boolean :gh_ami_invasive, default: false
        t.boolean :gh_ami_respirator, default: false
        t.boolean :gh_ami_dialysis, default: false
        t.boolean :gh_bi_cpr, default: false
        t.boolean :gh_bi_cc_only, default: false
        t.boolean :gh_bi_cc_plus, default: false
        t.boolean :gh_bi_reg_med, default: false
        t.boolean :gh_bi_invasive, default: false
        t.boolean :gh_bi_respirator, default: false
        t.boolean :gh_bi_dialysis, default: false
        t.boolean :gh_bi_cpr, default: false
        t.boolean :dh_ami_cc_only, default: false
        t.boolean :dh_ami_cc_plus, default: false
        t.boolean :dh_ami_reg_med, default: false
        t.boolean :dh_ami_invasive, default: false
        t.boolean :dh_ami_respirator, default: false
        t.boolean :dh_ami_dialysis, default: false
        t.boolean :dh_ami_cpr, default: false
        t.boolean :dh_bi_cc_only, default: false
        t.boolean :dh_bi_cc_plus, default: false
        t.boolean :dh_bi_reg_med, default: false
        t.boolean :dh_bi_invasive, default: false
        t.boolean :dh_bi_respirator, default: false
        t.boolean :dh_bi_dialysis, default: false
        t.boolean :dh_bi_cpr, default: false
        t.boolean :esmc_ami_cc_only, default: false
        t.boolean :esmc_ami_cc_plus, default: false
        t.boolean :esmc_ami_reg_med, default: false
        t.boolean :esmc_ami_invasive, default: false
        t.boolean :esmc_ami_respirator, default: false
        t.boolean :esmc_ami_dialysis, default: false
        t.boolean :esmc_ami_cpr, default: false
        t.boolean :esmc_bi_cc_only, default: false
        t.boolean :esmc_bi_cc_plus, default: false
        t.boolean :esmc_bi_reg_med, default: false
        t.boolean :esmc_bi_invasive, default: false
        t.boolean :esmc_bi_respirator, default: false
        t.boolean :esmc_bi_dialysis, default: false
        t.boolean :esmc_bi_cpr, default: false
        t.boolean :nhi_ami_cc_only, default: false
        t.boolean :nhi_ami_cc_plus, default: false
        t.boolean :nhi_ami_reg_med, default: false
        t.boolean :nhi_ami_invasive, default: false
        t.boolean :nhi_ami_respirator, default: false
        t.boolean :nhi_ami_dialysis, default: false
        t.boolean :nhi_ami_cpr, default: false
        t.boolean :nhi_bi_cc_only, default: false
        t.boolean :nhi_bi_cc_plus, default: false
        t.boolean :nhi_bi_reg_med, default: false
        t.boolean :nhi_bi_invasive, default: false
        t.boolean :nhi_bi_respirator, default: false
        t.boolean :nhi_bi_dialysis, default: false
        t.boolean :nhi_bi_cpr, default: false

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
