class Api::V2::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
      ssn: params[:ssn]
    )
    if @employee.save
      render "show.json.jbuilder"
    else
      render json: { errors: @employee.errors.full_messages }, status: 422
    end
    # redirect_to "/employees/#{@employee.id}"
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.birthdate = params[:birthdate] || @employee.birthdate
    @employee.email = params[:email] || @employee.email
    @employee.ssn = params[:ssn] || @employee.ssn
    @employee.save
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render json: { my_message: "Employee successfully destroyed!" }
  end
end
