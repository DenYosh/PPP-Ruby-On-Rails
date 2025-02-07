class CreateEmployeeallowances < ActiveRecord::Migration[8.0]
  def change
    create_table :employeeallowances do |t|
      t.timestamps
    end
  end
end
