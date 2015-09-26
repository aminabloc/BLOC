class CreateJobapps < ActiveRecord::Migration
  def change
    create_table :jobapps do |t|
      t.string :title
      t.string :deadline
      t.text :body

      t.timestamps null: false
    end
  end
end
