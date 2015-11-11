class AddResumelinkToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :resumelink , :string
  end
end
