class AddDepartmentToEmployee < ActiveRecord::Migration[8.0]
  def change
    add_reference :employees, :department, null: false, foreign_key: true, default: 1
  end
end
