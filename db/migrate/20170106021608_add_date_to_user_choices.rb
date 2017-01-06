class AddDateToUserChoices < ActiveRecord::Migration
  def change
    add_column :user_choices, :date, :date
  end
end
