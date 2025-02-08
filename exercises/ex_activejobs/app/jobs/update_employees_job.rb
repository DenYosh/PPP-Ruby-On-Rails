class UpdateEmployeesJob < ApplicationJob
  queue_as :default

  def perform(employee_id, attributes)
    employee = Employee.find(employee_id)
    employee.update(attributes)
  end
end
