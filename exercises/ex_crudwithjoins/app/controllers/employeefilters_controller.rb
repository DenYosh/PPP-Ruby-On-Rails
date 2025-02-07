class EmployeefiltersController < ApplicationController
  def index
    @employees = Employee.includes(:department, :country)

    if params[:search].present?
      # @employees = @employees.where("firstname LIKE ?", "#{params[:search]}%")

      # @employees = @employees.where("firstname LIKE ? AND lastname LIKE ?",
      # "%#{params[:search]}%",  "%#{params[:search]}%")

      @employees = @employees.where("firstname LIKE ? OR lastname LIKE ?",
      "%#{params[:search]}%",  "%#{params[:search]}%")

      # @employees = @employees.where(email: params[:search])

      # @employees = @employees.where.not(email: params[:search])

      # @employees = @employees.where("salary > ?", params[:search])
      # @employees = @employees.where("salary >= ?", params[:search])
      # @employees = @employees.where("salary < ?", params[:search])
      # @employees = @employees.where("salary <= ?", params[:search])

    end
      @employees = @employees.where(country_id: params[:country_id]) if params[:country_id].present?
      # @employees = @employees.where.not(country_id: params[:country_id]) if params[:country_id].present?

      @employees = @employees.where(department_id: params[:department_ids]) if params[:department_ids].present?


      if params[:start_date].present? && params[:end_date].present?
        @employees = @employees.where(birthdate: Date.parse(params[:start_date])..Date.parse(params[:end_date]))
        # @employees = @employees.where.not(birthdate: Date.parse(params[:start_date])..Date.parse(params[:end_date]))
      else
        @employees = @employees.where(birthdate: nil) # NULL
      end

      # @employees = @employees.order("departments.name")
      # @employees = @employees.order("departments.name DESC")

      @employees = @employees.order("departments.name DESC", "countries.name ASC")
  end

  # @employee = Employee.find(16)

  # @employee = Employee.find([16,17]) #Array of Primary Keys

  # @employee = Employee.take

  # @employee = Employee.take(3)


  # @employee = Employee.first


  # @employee = Employee.first(3)


  # @employee = Employee.order(:firstname).first


  # @employee = Employee.last
  # @employee = Employee.last(3)
  # @employee = Employee.order(:firstname).last


  # @employee = Employee.find_by(firstname: "Connors")
  # @employee = Employee.where(firstname: "Connors").take

  # @employee=Employee.select(:firstname, :lastname)
  # @employee.select(:last_name).distinct

  # @employee = Employee.limit(5)
  # @employee = Employee.limit(5).offset(5)

  # Employee.group(:department_id).count

  # Employee.where("id > 10").order(:salary).reverse_order

  # Employee.joins("INNER JOIN departments ON Employees.department_id = departments.id")

  # Employee.joins(:department)
  # Employee.joins(:department, :country)


  # Employee.find_by_sql("SELECT * FROM Employees INNER JOIN departments ON Employees.department_id = departments.id")

  # Employee.where(salary:5000).pluck(:id)

  # # RETURN ONLY TRUE FALSE
  #   Employee.exists?(1)
  #   Employee.exists?(id: [1,2,3])
  #   Employee.where(firstname: 'Connors').exists?
  #   Employee.exists?


  #   # RETURN COUNT OF TABLE RECORD
  #   Employee.count
  #   Employee.where(firstname: 'Connors').count
end
