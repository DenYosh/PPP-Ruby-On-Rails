class AddForeignKeyToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :user_id, :bigint

    add_foreign_key :products, :users
  end
end
