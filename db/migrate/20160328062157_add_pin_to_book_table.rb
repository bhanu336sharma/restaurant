class AddPinToBookTable < ActiveRecord::Migration
  def change
    add_column :book_tables, :pin, :integer
  end
end
