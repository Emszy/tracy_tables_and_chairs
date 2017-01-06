class CreateUserChoices < ActiveRecord::Migration
  def change
    create_table :user_choices do |t|
      t.integer :table_quantity
      t.integer :chair_quantity
      t.string :city
      t.integer :price

      t.timestamps null: false
    end
  end
end
