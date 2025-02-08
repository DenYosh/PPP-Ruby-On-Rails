class Api::V1::DepartmentsController < ApplicationController
  before_action :set_department, only: [ :show, :update, :destroy ]

  def index
    @departments = Department.all
    render json: @departments, each_serializer: Api::V1::DepartmentSerializer,  status: :ok
  end

  def show
    render json: @department
  end

  def update
    if @department.update(department_params)
      render json: @department
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @department.destroy
    render json: { message: "Department deleted successfully." }
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      render json: @department, status: :created
    else
      render json: @department.errors, status: :unprocessable_entity # 422
    end
  end



  private
  def set_department
    @department = Department.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Department not found" }, status: :not_found
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
