class AddEmployeesalaryToEmployeeallowance < ActiveRecord::Migration[8.0]
  def change
    add_reference :employeeallowances, :employeesalary, null: false, foreign_key: true
  end
end
