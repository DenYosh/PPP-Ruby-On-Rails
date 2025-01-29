class Api::V1::EmployeesController < ApplicationController

  before_action :set_employee, only: [:show,:update,:destroy]

  def index

    @employees = Employee.includes(:department,:country)
    render json: @employees, each_serializer: Api::V1::EmployeeSerializer,  status: :ok
  end

  def show
    render json: @employee
  end

  def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    render json: { message: "Employee deleted successfully." }
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity #422
    end
  end



  private
  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Employee not found' }, status: :not_found
  end

  def employee_params
    params.require(:employee).permit(:firstname, :lastname, :haspassport, :salary, :gender, :email, :phone, :birthdate, :hiredate, :notes, :department_id, :country_id)
  end

end
