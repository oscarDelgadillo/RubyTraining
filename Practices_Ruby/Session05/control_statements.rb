# Create a class that is going to receive :
# 1. The quantity of persons to register
# 2. One method to get the Name and ID for all the persons registered
# 3. One method that consider:
#   a) for each one of the Names, change them to upper case
#   b) print the position and the Name of each person registered
#   c) Save the name in upper case into an array, return the array
# 4. One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.


class Register
  def initialize(quantity)
    @persons = Hash[]
    @quantity = quantity
  end

  def add_person
    @quantity.times do
      print "Insert ID: "
      key = gets.chomp
      print "Insert name: "
      value = gets.chomp
      @persons.store key, value
    end
  end

  def get_name_id
    @persons.each {|key, value| puts "The ID:#{key} is for the name: #{value}"}
  end

  def multi_task
    new_array = Array.new
    @persons.each_with_index do |(key, value), index|
      @persons[key] = value.upcase
      puts "The name: #{value} is in the position #{index}"
      new_array.push(value.upcase)
    end
    return new_array
  end

  def remove_persons
    @persons.each {|key, value| puts "Good bye #{@persons[key]}"
    @persons.delete(key)
    }
  end
end

control = Register.new(3)
control.add_person
control.get_name_id
p control.multi_task
control.remove_persons

