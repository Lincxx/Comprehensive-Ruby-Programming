# OOP - "Everything in Ruby is an object"
require "./Sale"
form_data = {subtotal: 1500, state_name: "CA"}
puts Sale::FormBuilder.call(form_data)