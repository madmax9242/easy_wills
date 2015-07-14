class AddQualityOfLifeToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :quality_of_life, :string
  end
end
