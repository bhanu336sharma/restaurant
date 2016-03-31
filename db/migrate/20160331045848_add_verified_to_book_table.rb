class AddVerifiedToBookTable < ActiveRecord::Migration
  def change
    add_column :book_tables, :verified, :boolean
  end
end
