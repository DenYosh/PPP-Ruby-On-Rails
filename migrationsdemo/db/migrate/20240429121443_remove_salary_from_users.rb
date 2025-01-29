class RemoveSalaryFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :salary, :integer
  end
end
