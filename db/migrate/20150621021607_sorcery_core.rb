class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :null => false
      t.string :crypted_password
      t.string :salt
      t.string :quality_of_life

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end