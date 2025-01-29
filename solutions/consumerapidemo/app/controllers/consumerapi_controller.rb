require 'net/http'
require 'json'

class ConsumerapiController < ApplicationController

  before_action :set_employee, only: [:show,:edit]
  before_action :load_countries_departments, only: [:edit,:new]

  def index
    uri = URI('http://localhost:3000/api/v1/employees')
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      @employees = JSON.parse(response.body)
    else
      @error = "Failed to fetch data from API"
    end
  end

  def show
  end

  def edit
  end

  def update
    #Fail
    #

    uri = URI("http://localhost:3000/api/v1/employees/#{params[:id]}")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Patch.new(uri.path)

    employee_data = set_employee_params
    request.content_type = 'application/json'
    request.body = employee_data.to_json
    response = http.request(request)

    if response.code == '422'
      @errors = JSON.parse(response.body)

      flash.now[:error] = @errors.values.flatten.join(', ')
      render :edit
    elsif response.is_a?(Net::HTTPSuccess)
      flash[:success] = "Employee updated successfully!"
      redirect_to consumerapi_index_path
    else
      flash[:error] = "Failed to update employee"
      render :edit
    end




  end

  def new

  end

  def create

    uri = URI('http://localhost:3000/api/v1/employees')
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.path)

    employee_data = set_employee_params
    request.content_type = 'application/json'
    request.body = employee_data.to_json
    response = http.request(request)


    if response.code == '422'
      @errors = JSON.parse(response.body)
      flash.now[:error] = @errors.values.flatten.join(', ')
      render :new
    elsif response.code == "201"
      flash[:success] = "Employee created successfully!"
      redirect_to consumerapi_index_path
    else
      flash[:error] = "Failed to create employee"
      render :new
    end


  end

  def destroy
    uri = URI("http://localhost:3000/api/v1/employees/#{params[:id]}")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Delete.new(uri)

    response = http.request(request)

    if response.is_a?(Net::HTTPSuccess)
      flash[:success] = "Employee deleted successfully"
    else
      flash[:error] = "Failed to delete employee: #{response.message}"
    end
    redirect_to consumerapi_index_path

  end

  private
  def set_employee
    uri = URI("http://localhost:3000/api/v1/employees/#{params[:id]}")
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      @employee = JSON.parse(response.body)
    else
      flash[:error] = "Failed to fetch API response"
      redirect_to consumerapi_index_path
    end
  end

  def load_countries_departments

    uri = URI('http://localhost:3000/api/v1/departments')
       response = Net::HTTP.get_response(uri)

       if response.is_a?(Net::HTTPSuccess)
         @departments = JSON.parse(response.body)
       else
         @error = "Failed to fetch departments data from API"
       end

       uri = URI('http://localhost:3000/api/v1/countries')
       response = Net::HTTP.get_response(uri)

       if response.is_a?(Net::HTTPSuccess)
         @countries = JSON.parse(response.body)
       else
         @error = "Failed to fetch Country data from API"
       end


  end

  def employee_params
    params.require(:employee).permit(:firstname, :lastname, :haspassport, :salary, :gender, :email, :phone, :birthdate, :hiredate, :notes, :department_id, :country_id)
  end


   def set_employee_params
    {
      employee: {
        firstname: employee_params[:firstname],
        lastname: employee_params[:lastname],
        haspassport: employee_params[:haspassport],
        salary: employee_params[:salary],
        gender: employee_params[:gender],
        email: employee_params[:email],
        phone: employee_params[:phone],
        birthdate: employee_params[:birthdate],
        hiredate: employee_params[:hiredate],
        notes: employee_params[:notes],
        department_id: employee_params[:department_id],
        country_id: employee_params[:country_id],
      }
    }
  end


end
