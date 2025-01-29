
require 'caracal'
class EmployeeDocxService
  def initialize(employees)
    @employees = employees
  end

  def employee_data
    file_name = "#{Time.now.to_i}.docx"
    file_path = "#{Rails.root}/public/#{file_name}"
    doc = Caracal::Document.new(file_path)

    doc.table employee_data_rows do
      border_color   '666666'
      border_line    :single
      border_size    4
      border_spacing 4
    end

    doc.save
    file_name
  end

   def employee_data_rows
    [["First Name", "Last Name", "Salary", "Notes"]] +
    @employees.map do |emp|
      [emp.firstname, emp.lastname, emp.salary,emp.notes]
    end
   end
end
