class AddNameToUserChoices < ActiveRecord::Migration
  def change
    add_column :user_choices, :first_name, :string
    add_column :user_choices, :last_name, :string
  end
end
