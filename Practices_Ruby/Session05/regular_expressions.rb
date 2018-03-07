# 1. Add a method that is going to ask for a username :
#   a) Need to be write with lowercase letter (a-z), number (0-9), an underscore

def ask_username(username)
  if username =~ /^[a-z0-9_]+$/
    puts "Valid username"
  else
    puts "Invalid username"
  end
end

print "Insert username: "
username = gets.chomp
ask_username(username)

# 2. Add a method that is going to ask for a password:
#   a) Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8
#      and 16 characters

def ask_password(password)
  if password =~ /^[a-zA-Z0-9]{8,16}$/
    puts "Password valid"
  else
    puts "Password invalid"
    end
end

print "Insert password: "
password = gets.chomp
ask_password(password)

# 3. Add a method that is going to ask for email
#   a)Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)

def ask_email(email)
  if email =~ /^[\w]+@[\w-]+\.[a-zA-Z]{2,3}(\.[a-zA-Z]{2,3})?$/
    puts "Email valid"
  else
    puts "Email invalid"
  end
end

print "Insert email: "
email = gets.chomp
ask_email(email)
