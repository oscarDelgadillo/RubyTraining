# Write a script similar to :
#   puts "Give me a number: "
#   number = gets.chomp.to_f
#   puts “The floating number is : #{number}."
#
#     Consider to :
#     Insert at least 4 different types of strings (number, strings with number, number with string, etc)
#     and print them as floating number.

print "Please inser a number: "
number = gets.chomp.to_f
puts "The floating number is #{number}"

# Output with different inputs
=begin
Please inser a number: 100
The floating number is 100.0

Please inser a number: 120sometext
The floating number is 120.0

Please inser a number: text
The floating number is 0.0

Please inser a number: text456
The floating number is 0.0
=end
