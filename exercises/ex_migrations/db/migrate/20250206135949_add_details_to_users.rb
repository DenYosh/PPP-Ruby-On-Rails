class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :salary, :integer
  end
end
