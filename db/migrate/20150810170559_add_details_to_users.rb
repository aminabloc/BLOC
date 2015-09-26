class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :school , :string
  	add_column :users, :major , :string
  	add_column :users, :gradyear , :integer
  	add_column :users, :experience, :text 
  	add_column :users, :skills, :text
  end
end
