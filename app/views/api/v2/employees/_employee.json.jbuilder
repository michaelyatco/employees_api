json.id employee.id
json.firstName employee.first_name
json.lastName employee.last_name
json.fullName employee.full_name
json.birthdate employee.birthdate
if employee.email.end_with? "hotmail.com"
  json.email employee.email + " (you should update your email address bro)"
else
  json.email employee.email
end
json.addresses employee.addresses.each do |address|
  json.address1 address.address_1
  json.address2 address.address_2
  json.city address.city
  json.state address.state
  json.zip address.zip
end
