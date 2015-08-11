class AddDetailsToCompanies < ActiveRecord::Migration
  def change
  	add_column :companies, :companyname, :string
  	add_column :companies, :city, :string
  	add_column :companies, :industry, :string
  	add_column :companies, :hiringfor, :text
  	add_column :companies, :topskills, :text
  end
end
