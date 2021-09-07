class AddAddressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    # what are we doing, where are doing it (table), what are we adding, && the type
    add_column :restaurants, :address, :string
  end
end
