class CreateUserDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :user_details do |t|
      t.string :name
      t.text :profile

      t.timestamps
    end
  end
end
