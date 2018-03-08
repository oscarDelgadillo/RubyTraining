# -Calculation class that should be the child of registration class:
#    -- Method to ask which type of calculation the user wants (for each username registered),
#     according the calculation type, should give all the possible conversions and should receive the value
#     from the user (promt)and and return that value (conversion selected)
# e.g. Calculation type : Time conversion
# Options displayed:
#     a. From minutes to hours
#     b. From hours to days
#     c. From days to month
# Option selected by user: b
# Method that according variable of previous method should give the calculation result. E.g. the conversion type was b, then :
#     Insert the value in hours : 48Hrs
# Prints : 48 Hrs represent 2 days.
#     Method to create an array with the username of people who asked for any time conversion, return the array
#     Method to Create an array with username of people who asked for distance conversion, return array
# Apply, singleton for registration class, so that the username and ID values are not lose when the class is instanced.

require './registration.rb'

class Calculation < Registration

  attr_reader :array_time
  attr_reader :array_distance

  def initialize
    super
    @array_time = []
    @array_distance = []
  end

  def time
    puts "a. Minutes to hours"
    puts "b. Hours to days"
    puts "c. Days to months"
    print "Option: "
    option = gets.chomp
    print "Insert the value: "
    value = gets.chomp.to_i
    case option
      when "a"
        puts "#{value} Min. represent #{minutes_to_hours(value)} Hrs."
      when "b"
        puts "#{value} Hrs. represent #{hours_to_day(value)} days."
      when "c"
        puts "#{value} Days represent #{days_to_month(value)} months."
      else
        puts "invalid option"
    end
  end

  def distance
    puts "a. Millimeters to centimeters"
    puts "b. Centimeters to meters"
    puts "c. Meters to kilometers"
    print "Option: "
    option = gets.chomp
    print "Insert the value: "
    value = gets.chomp.to_i
    case option
      when "a"
        puts "#{value} Mill. represent #{millimeters_to_centimeters(value)} cm."
      when "b"
        puts "#{value} Cm. represent #{centimeters_to_meters(value)} mts."
      when "c"
        puts "#{value} Mts represent #{meters_to_kilometers(value)} kms."
      else
        puts "invalid option"
    end
  end

  def ask_type_calculation
    @hash_reg.each do |key, value|
      puts "Select type of calculation for user #{value.upcase}:"
      puts "a. Time conversion"
      puts "b. Distance conversion"
      print "Option: "
      option = gets.chomp

      case option
        when "a"
          time
          @array_time.push(value)
        when "b"
          distance
          @array_distance.push(value)
        else
          puts "invalid option"
      end
    end
  end
end

c = Calculation.instance
c.ask_username_id
c.ask_type_calculation
puts "People how choose time conversion: #{c.array_time}"
puts "People how choose distance conversion: #{c.array_distance}"
