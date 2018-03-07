# Create a class that is going to receive :
# 1. name, age (use getter and setter concept)
# 2. Method to calculate years in hours only if years is lower than 35, otherwise return a message that age cannot be calculated
# 3. Method that consider the values obtained from the previous. Use short-if expression method,
#   a. when value is between 0-5 year print you are a baby
#   b. when value is between 6-12 year print you are a child
#   c. when value is between 13-21years print you are a young people
#   d. when value is between 22- 35 print you are adult
#   e. Otherwise print the message obtained from previous method.

class Control
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def calculate_years_in_hours
    if @age < 35
      @age * 365 * 24
    else
      "The age cannot be calculated."
    end
  end

  def calculate_age
    case @age
      when 0..5 then
        puts "You're a baby."
      when 6..12 then
        puts "You're a child."
      when 13..21 then
        puts "You're a young people."
      when 22..35 then
        puts "You're adult."
    end
  end

end

person1 = Control.new("Homero", 20)
puts "#{person1.name} is #{person1.age} years old, in hours is " + person1.calculate_years_in_hours.to_s
person1.calculate_age

person2 = Control.new("Bart", 5)
puts "#{person2.name} is #{person2.age} years old, in hours is " + person2.calculate_years_in_hours.to_s
person2.calculate_age
