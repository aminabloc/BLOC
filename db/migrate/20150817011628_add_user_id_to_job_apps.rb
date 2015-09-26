class AddUserIdToJobApps < ActiveRecord::Migration
  def change
  	 add_column :jobapps, :user_id, :integer
   	 add_index :jobapps, :user_id
  end
end
