class SingleemployeedeleteController < ApplicationController
  def index
    @employees = Employee.all()
  end

  def emp_delete
    if params[:imployee_id].present?
      Employee.find(params[:imployee_id]).destroy!
    end

    redirect_to singleemployeedelete_index_path
  end
end
