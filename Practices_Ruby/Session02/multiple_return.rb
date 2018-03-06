# 1. Considered your previous script of convert seconds in minutes and seconds in hours :
#   a) Ask from prompt the value of the seconds
#   b) Perform the calculation of minutes and hours into one function, return both values
#   c) Print the values of the variables.

def calculate_seconds(seconds)
  minutes = seconds / 60
  hours = minutes / 60
  return minutes, hours
end

print "Insert seconds: "
seconds = gets.chomp.to_i
value_minutes, value_hours = calculate_seconds(seconds)
puts "Converting #{seconds} seconds in:"
puts " - Minutes is #{value_minutes} min."
puts " - Hours is #{value_hours} hrs."

# 2. Create a new script with :
#   a) function to convert Bs and return the value in $us and €
#   b) Print in the script the request for the amount in Bs , and then print the result obtained from the funtion

$DOLLAR = 0.14437 # 1 BOB = 0.14437 $us.
$EURO = 0.806003111 # 1 U.S. dollar = 0.806003111 Euros
# $EURO = 0.11740 # 1 BOB = 0,11740 €.

def convert_bs(value)
  dollar = value * $DOLLAR
  euro = dollar * $EURO
  return dollar.round(2), euro.round(2)
end

print "Insert amount in BOB: "
bs = gets.chomp.to_f
value_dollars, value_euros = convert_bs(bs)
puts "Converting #{bs} Bs. in:"
puts " - Dollar is #{value_dollars} $us."
puts " - Euros is #{value_euros} €."
