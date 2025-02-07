class BelfastemployeesController < ApplicationController
  def index
    @employees = Belfastemployee.all
  end

  def export_as
    @employees = Belfastemployee.all
    if params[:export_type] == "pdf"
      export_as_pdf
    elsif params[:export_type] == "csv"
      export_as_csv
    elsif params[:export_type] == "txt"
      export_as_txt
    elsif params[:export_type] == "xls"
      export_as_xls
    elsif params[:export_type] == "docx"
      export_as_docx
    else
      redirect_to root_path
    end
  end

  private
  def export_as_pdf
    respond_to do |format|
      format.pdf do
      employees_pdf = EmployeePdfService.new(@employees)
      send_data employees_pdf.render, filename: "employees.pdf", type: "application/pdf", disposition: "attachment"
      end
    end
  end

  def export_as_csv
    respond_to do |format|
      format.html
      format.csv do
        filename = [ "employees", Date.today ].join(" ")
        send_data Belfastemployee.to_csv(@employees), filename:, content_type: "text/csv"
      end
    end
  end

  def export_as_txt
    txt_path = EmployeeTxtService.new(@employees).employee_data
    send_file("#{Rails.root}/public/#{txt_path}", filename: "employees.txt")
  end

  def export_as_xls
    empbook = EmployeeXlsService.new(@employees).employee_data
    respond_to do |format|
      format.xls {
          tempfile = Tempfile.new([ "employees", ".xls" ])
          empbook.write(tempfile.path)
          send_file tempfile.path, filename: "employees.xls", type: "application/vnd.ms-excel"
      }
    end
  end


  def export_as_docx
    filename = EmployeeDocxService.new(@employees).employee_data
    send_file("#{Rails.root}/public/#{filename}", filename: "employees.docx", disposition: "attachment")
  end
end
