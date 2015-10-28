class AddStudentToJapps < ActiveRecord::Migration
  def change
  	add_column :japps, :student, :string
	add_column :japps, :major, :string
	add_column :japps, :experience,  :string
	add_column :japps, :geo, :string
  end
end
