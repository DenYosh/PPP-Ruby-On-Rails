class RemoveSalaryFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :salary, :integer
  end
end
