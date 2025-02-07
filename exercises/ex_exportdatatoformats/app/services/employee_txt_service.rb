
class EmployeeTxtService
  def initialize(employees)
    @employees = employees
  end

  def employee_data
    txt_content = "First Name\tLast Name\tSalary\tNotes\n"
    @employees.each do |emp|
      txt_content += "#{emp.firstname}\t#{emp.lastname}\t#{emp.salary}\t#{emp.notes}\n"
    end

    file_name = "#{Time.now.to_i}.txt"
    file_path = "#{Rails.root}/public/#{file_name}"

    File.open(file_path, "w") do |file|
      file.write(txt_content)
    end

    file_name
  end
end
