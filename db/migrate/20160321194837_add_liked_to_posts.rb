class AddLikedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :liked, :boolean
    change_column_default :employees, :foreign, false

end
