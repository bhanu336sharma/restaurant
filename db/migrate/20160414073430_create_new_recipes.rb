class CreateNewRecipes < ActiveRecord::Migration
  def change
    create_table :new_recipes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
