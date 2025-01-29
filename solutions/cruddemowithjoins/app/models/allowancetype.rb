class Allowancetype < ApplicationRecord

  has_many :employeeallowances
  has_many :employeesalaries, through: :employeeallowances


end
