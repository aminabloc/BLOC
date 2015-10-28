class AddNameToJapps < ActiveRecord::Migration
  def change
  	add_column :japps, :name 
  	add_column :japps, :skills , :string
  	add_column :japps, :experience , :string
  	add_column :japps, :links , :string
  	add_column :japps, :geo , :string
  end
end
