class AddCartToUser < ActiveRecord::Migration
  def change
    add_column :users, :cart, :integer
  end
end
