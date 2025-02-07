class CreateEmployeesalaries < ActiveRecord::Migration[8.0]
  def change
    create_table :employeesalaries do |t|
      t.integer :salary
      t.integer :netallowanceamount
      t.integer :netsalary

      t.timestamps
    end
  end
end
