class RemoveForeignKeyFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :products, :users
  end
end
