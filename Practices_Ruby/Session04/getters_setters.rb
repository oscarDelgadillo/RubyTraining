# Create one class named Person
# 1. This class should have one setter to the name.
# 2. One getter to the greet for the person e.g. Hi <name>
# 3. One setter and getter to a special message e.g. <name> Have a nice day.
# You can directly print the message in the instance variable or out of the class

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def message
    puts "#{@name} have a nice day."
  end
end

person = Person.new("Oscar")
puts "Hi #{person.name}"
person.message
