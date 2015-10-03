class AddJobToJapps < ActiveRecord::Migration
  def change
    add_reference :japps, :job, index: true, foreign_key: true
  end
end
