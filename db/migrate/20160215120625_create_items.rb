class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :photo
      t.integer :price
      t.string :type

      t.timestamps
    end
  end
end
