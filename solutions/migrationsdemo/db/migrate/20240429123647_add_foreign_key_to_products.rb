class AddForeignKeyToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :user_id, :bigint

    add_foreign_key :products, :users
  end
end
