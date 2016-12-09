json.array! @employees.each do |employee|
  json.partial! 'employee.json.jbuilder', employee: employee
end
