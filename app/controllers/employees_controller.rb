class EmployeesController < ApplicationController
  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
