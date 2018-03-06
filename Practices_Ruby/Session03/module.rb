require './modules_file'

# 3. Include both modules in a class

class Sample
  include Greeters
  include Bye
end

# 4. Print the different greeters using an instance of the class and calling to the module methods.

greets = Sample.new
greets.say_hi
greets.nigth
greets.afternoon
greets.say_bye
greets.later
greets.take_care

# 5. Move the modules to another file and include them adding the line :
#     require "./<filename>“
# Research to include files from other folder.
# The same logic but apply library concept.

