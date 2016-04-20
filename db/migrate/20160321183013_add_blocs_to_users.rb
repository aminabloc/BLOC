class AddBlocsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bloc1 , :string
  	add_column :users, :bloc2 , :string
  	add_column :users, :bloc3 , :string
  	add_column :users, :bloc4 , :string
  end
end
