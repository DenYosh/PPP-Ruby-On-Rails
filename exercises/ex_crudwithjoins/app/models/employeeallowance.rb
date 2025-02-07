class Employeeallowance < ApplicationRecord
  belongs_to :allowancetype
  belongs_to :employeesalary
end
