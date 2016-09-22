class EmployeeController < ApplicationController
	before_action :set_employee, only:[:show]
#GET /employee
#GET /employee.json
	def index
		@employees = Employee.all
	end
end