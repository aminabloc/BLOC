class AddStageToJapps < ActiveRecord::Migration
  def change
  	    add_column :japps, :stage, :string

  end
end
