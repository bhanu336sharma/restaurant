class RemovePhoneFromBookTable < ActiveRecord::Migration
  def change
  	remove_column :book_tables, :phone
  	add_column :book_tables, :phone, :string
  end
end
