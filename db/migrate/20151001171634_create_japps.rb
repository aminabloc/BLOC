class CreateJapps < ActiveRecord::Migration
  def change
    create_table :japps do |t|
      t.text :statement
      t.text :resume
      t.text :cover

      t.timestamps null: false
    end
  end
end
