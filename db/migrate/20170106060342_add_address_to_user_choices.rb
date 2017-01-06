class AddAddressToUserChoices < ActiveRecord::Migration
  def change
    add_column :user_choices, :street_address, :string
  end
end
