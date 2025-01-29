class CreateEmployeeallowances < ActiveRecord::Migration[7.1]
  def change
    create_table :employeeallowances do |t|

      t.timestamps
    end
  end
end
