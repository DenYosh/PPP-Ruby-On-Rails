class Employeesalary < ApplicationRecord
  has_many :employeeallowances
  has_many :allowancetypes, through: :employeeallowances
end
