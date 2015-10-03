class AddNameToJobs < ActiveRecord::Migration
  def change
  	   add_column :jobs, :user_name, :integer
    	add_index :jobs, :user_name
  end
end
