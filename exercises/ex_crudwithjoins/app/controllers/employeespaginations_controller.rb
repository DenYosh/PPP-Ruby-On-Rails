class EmployeespaginationsController < ApplicationController
  def index
    @employees = Employee.search(params[:search]).page(params[:page]).per(params[:per_page])
  end
end
