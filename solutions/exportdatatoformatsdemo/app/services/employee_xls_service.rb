
class EmployeeXlsService
  def initialize(employees)
    @employees = employees
  end

  def employee_data
    workbook = Spreadsheet::Workbook.new
    worksheet = workbook.create_worksheet(name: 'EmployeeData')

    worksheet.row(0).concat ["First Name", "Last Name", "Salary", "Notes"]

    @employees.each_with_index do |emp, index|
      worksheet.row(index + 1).push emp.firstname, emp.lastname, emp.salary,emp.notes
    end

    workbook

  end
 end
