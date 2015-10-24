class AddMoreDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :orgs , :string
  	add_column :users, :links , :string
  	add_column :users, :threeskills , :integer
  	add_column :users, :phone, :string 
  	add_column :users, :geo, :text  
  	add_column :users, :hometown , :string
  	add_column :users, :company, :string
  	add_column :users, :mission, :text
  	add_column :users, :industry, :text
  	add_column :users, :statement, :string
  	add_column :users, :title, :string 
  	add_column :users, :testimonial_one, :text
  	add_column :users, :testimonial_two, :text
  	add_column :users, :testimonial_three, :text
  end
end
