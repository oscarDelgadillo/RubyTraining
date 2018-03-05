# Write a script similar to :
#   print "Give me a number: "
#   number = gets.chomp.to_i
#   bigger = number * 100
#   puts "A bigger number is #{bigger}."
#
# Consider to :
#     Insert at least 4 different types of string (number, strings with number, number with string, etc)
#     and print them as integer.
# In any case when insert a value different that any integer return zero.


print "Please inser a number: "
number = gets.chomp.to_i
bigger = number * 1000
puts "A bigger number is #{bigger}"

# Output with different inputs
=begin
Please inser a number: 200
A bigger number is 200000

Please inser a number: 521dasd
A bigger number is 521000

Please inser a number: text211312
A bigger number is 0

Please inser a number: text
A bigger number is 0
=end
