class RemoveForeignKeyFromProducts < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :products, :users
  end
end
