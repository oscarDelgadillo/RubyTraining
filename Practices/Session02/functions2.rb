# 1. Write 1 function that transform Celsius in Fahrenheit
#   Fahrenheit = (((9* Celsius ) /5) + 32)
#   a) This function should receive a Celsius value
#   b) Pickup any way of the return displayed.

def celsius_to_fahrenheit(celsius)
  ((9 * celsius) / 5) + 32
end

value = 10
puts "#{value} celsius to fahrenheit is: #{celsius_to_fahrenheit value}"

value = -8.01
puts "#{value} celsius to fahrenheit is: #{celsius_to_fahrenheit value}"


# 2. Write 1 function that transform Fahrenheit in Celsius
# Celsius = (5*(Fahrenheit - 32))/9
#   a) This method should receive a Fahrenheit value
#   b) Pickup any other way of the return displayed
# Tips : use the correct format of number (int? float?)

def fahrenheit_to_celsius(fahrenheit)
  (5 * (fahrenheit - 32)) / 9
end

value = 50
puts "#{value} fahrenheit to celsius is: #{fahrenheit_to_celsius value}"

value = 17.582
puts "#{value} fahrenheit to celsius is: #{fahrenheit_to_celsius value}"