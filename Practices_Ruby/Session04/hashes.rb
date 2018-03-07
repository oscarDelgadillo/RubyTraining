# Create a class with:
# 1. method to create the hash, the method should ask for the length of the hash
#   According the length defined should ask to the user for the key and for 	the value.
#   - Use a getter to obtain the hash created in the method
# 2. Method to print the hash key
# 3. Method to print the hash values
# 4. Method to print the hash
# 5. Method to define is a key inserted by the user, exists on the hash.
# 6. Method to define is a value inserted by the user, exists on the hash.
# 7. Instance the class and call to the method to create the hash

class My_class
  My_hash = {}

  def fill_hash
    print "Insert the size of the hash: "
    size = gets.to_i
    size.times do
      print "Insert key: "
      key = gets.chomp
      print "Insert value: "
      value = gets.chomp
      My_hash.store key, value
    end
  end

  def print_keys
    p My_hash.keys
  end

  def print_values
    p My_hash.values
  end

  def print_hash
    p My_hash
  end

  def verify_key_exist(key)
    My_hash.has_key?(key)
  end

  def verify_value_exist(value)
    My_hash.has_value?(value)
  end


end

a = My_class.new
a.fill_hash
a.print_keys
a.print_values
a.print_hash
find_key = "1"
puts "The key #{find_key} is present in the hash?: " + a.verify_key_exist(find_key).to_s
find_value = "uno"
puts "The value #{find_value} is present in the hash?: " + a.verify_value_exist(find_value).to_s


