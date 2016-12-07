json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
json.full_name employee.full_name
json.birthdate employee.birthdate
if employee.email.end_with? "hotmail.com"
  json.email employee.email + " (you should update your email address bro)"
else
  json.email employee.email
end
