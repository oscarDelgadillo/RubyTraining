# 1. Take your previous script and change calculations for variables.

=begin
The purpose of this scrit is learn how works basic arithmetic operations
and display results.
=end

puts "I will made operations with numbers and math:"

day_to_minutes = 24 * 60
puts "24 hours to minutes is: #{day_to_minutes}"

discount = 1500 * 0.25
puts "The 25% fo discount of 1500$ is: #{discount}"

actual_year = 2018
born_year = 1990
year_old = actual_year - born_year
puts "She born in 1990 and she is #{year_old} years old. #{new_year}"

puts "Logic operations:"

operation = 3 + 2 < 5 - 7
puts "Is it true that 3 + 2 < 5 - 7 = #{operation}"

# For this example when made a comparison of the same content, capital letter always is before than lower cases.
comparison = "jalasoft" < "Jalasoft"
puts "Is jalasoft <= Jalasoft : #{comparison}"


# 2. Add some line in the middle of your script that is referring to a variable that doesn’t exist. Run the file and
# please explain the error displayed.
=begin
The error displayed is because the local variable dosn't exist.
Adding reference in the line 19.
=end


# 3. Create a new script
#    a. add variables with numbers and strings.
#    b. Print them as a sentences (like in the previous case)
#    c. Add some sentence that perform some calculation using variable names.
#     E.g. instead of #{2 + 3} use #{arg1 + arg2}

my_name = "Oscar Delgadillo"
my_cell_phone = 72275448

puts "This is a practice made for #{my_name} any consult call to #{my_cell_phone}"

height = 54 # inches
weight = 82 # inches
puts "The total area is #{height * weight} inches."

# 4. Write an script with variables that convert seconds in minutes, seconds in hours and second in days.
#     Do not just type in the measurements. Please work out the calculation in Ruby.
#     Create variable to assign the values
# Use the variable name to print the result.

HOURS = 24 # one day
MINUTES = 60 # one hour
SECONDS = 60 # one minute

puts "In one year exist 365 days."
days = 365
days_to_hours = days * HOURS
puts "In one year exist #{days_to_hours} hours."
hours_to_minutes = days_to_hours * MINUTES
puts "In one year exist #{hours_to_minutes} minutes."
minutes_to_seconds = hours_to_minutes * SECONDS
puts "In one year exist #{minutes_to_seconds} seconds."
