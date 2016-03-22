class CreateBookTables < ActiveRecord::Migration
  def change
    create_table :book_tables do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :phone
      t.date :date
      t.integer :person
      t.text :requests

      t.timestamps
    end
  end
end
