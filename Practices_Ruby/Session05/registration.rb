# Create two classes:
# - Registration class
#   * Should have a method to ask for Username and ID, by default those values should be initialized as null.
#       - Username should have the conditions :
#             -- no more than 11 characters
#             -- Only accept lower case and/or numbers
#       - Both values should be saved in a hash and handled using setter and/or getter
#   * Should have a  validation method for the amount of users, no more than 15 but not less of 3
# -Calculation class that should be the child of registration class:
#             -- Method to ask which type of calculation the user wants (for each username registered), according the calculation type, should give all the possible conversions and should receive the value from the user (promt)and and return that value (conversion selected)
# e.g. Calculation type : Time conversion
# Options displayed:
#             From minutes to hours
# From hours to days
# From days to month
# Option selected by user: b
# Method that according variable of previous method should give the calculation result. E.g. the conversion type was b, then :
#     Insert the value in hours : 48Hrs
# Prints : 48 Hrs represent 1 day.
#     Method to create an array with the username of people who asked for any time conversion, return the array
#     Method to Create an array with username of people who asked for distance conversion, return array
#     Apply, singleton for registration class, so that the username and ID values are not lose when the class is instanced.


require './modules.rb'

class Registration
  attr_accessor :hash_reg

  def initialize
    @username = nil
    @ID = nil
    @hash_reg = {}
  end

  def validate_amount
    if @hash_reg.size >=3 && @hash_reg.size <=15
      return true
    end
    return false
  end

  def ask_username_id

    while @hash_reg.size < 3
      print "Insert username: "
      username = gets.chomp
      if username =~ /^[a-z0-9]{1,11}$/
        @username = username
        print "Insert ID: "
        @ID = gets.chomp
        @hash_reg.store @ID, @username
      end
    end

    # print "Insert username: "
    # username = gets.chomp
    # if username =~ /^[a-z0-9]{1,11}$/
    #   @username = username
    #   print "Insert ID: "
    #   @ID = gets.chomp
    #   @hash_reg.store @ID, @username
    # else
    #   ask_username_id
    # end
  end


end

tmp = Registration.new
p tmp.ask_username_id
