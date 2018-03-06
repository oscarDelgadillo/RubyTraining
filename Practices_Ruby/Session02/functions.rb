# Write 1 function called person_age
# 1. This function should receive 2 arguments : name and age in years
# 2. Using ruby calculations transformed years to hours into a variable and change to uppercase the name
# 3. Print the text, e.g. :
#     Hi <name_in_uppercase>
#     Your <age> in hours is <age_in_hours>

def person_age (name, years)
hours = years * 365 * 24
  puts "Hi #{name.upcase()}"
  puts "Your #{years} years in hours is #{hours}"
end

person_age("Homero", 40)

# In the same ruby file create the call to this function:
#    a) Using parenthesis sending some data
#    b) Not using parenthesis sending another data

person_age("Lisa", 10)
person_age"Bart", 12