class EmployeePdfService < Prawn::Document

  def initialize(employees)
    super()
    @employees = employees
    employee_table
  end

  def employee_table

    table employee_data_rows do
      row(0).font_style = :bold
      columns(1..4).align = :center
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end

  end

  def employee_data_rows
    [["First Name", "Last Name", "Salary", "Notes"]] +
    @employees.map do |emp|
      [emp.firstname, emp.lastname, emp.salary,emp.notes]
    end
  end

end
