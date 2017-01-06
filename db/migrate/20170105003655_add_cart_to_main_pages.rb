class AddCartToMainPages < ActiveRecord::Migration
  def change
    add_column :main_pages, :chairs, :integer
    add_column :main_pages, :tables, :integer
  end
end
