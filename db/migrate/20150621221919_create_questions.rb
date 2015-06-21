class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :forms do |t|
        t.integer :user_id
    	t.text :gh_ami, array: true, default: []
    	t.text :gh_bi, array: true, default: []
    	t.text :dh_ami, array: true, default: []
    	t.text :dh_bi, array: true, default: []
    	t.text :esmc_ami, array: true, default: []
    	t.text :esmc_bi, array: true, default: []
    	t.text :nhi_ami, array: true, default: []
    	t.text :nhi_bi, array: true, default: []

    end
    #add_index :forms, :user_id
    add_foreign_key :forms, :users
    # Column Guide- gh = "good health" (#1), dh = "deteriorating health" (#2), esmc = "end-stage medical condition"
    # nhi = no hope for improvement, ami = acute medical illness that may be treated, bi= brain illness
  end
end
