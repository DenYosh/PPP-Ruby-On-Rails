class AddAllawancetypeToEmployeeallowance < ActiveRecord::Migration[8.0]
  def change
    add_reference :employeeallowances, :allowancetype, null: false, foreign_key: true
  end
end
