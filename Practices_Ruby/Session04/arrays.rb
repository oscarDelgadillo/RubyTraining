# 1. Create a class with two methods
#   method 1:
#     No arguments defined
#     - Should ask to the user the number of elements in the array
#     - According the value inserted ask for each value of the array and push it in a new array
#     - Return the array
#   method 2
#     - Should receive 1 argument (the array returned in method 1)
#     - Should print the array
#
# 2. Instance the class and call to each method in order to interact with them. Consider that method one shodul return
# the value that need to be used in second method.

class Arrays
  def method_1
    print "Insert the size of array: "
    size = gets.to_i
    my_array = Array.new
    Array.new(size)
    size.times do
      print "Insert element: "
      element = gets.chomp
      my_array.push(element)
    end
    return my_array
  end

  def method_2(array)
    p array
  end
end

array = Arrays.new
array.method_2(array.method_1)
