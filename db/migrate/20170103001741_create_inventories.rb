class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :tables
      t.integer :chairs

      t.timestamps null: false
    end
  end
end
