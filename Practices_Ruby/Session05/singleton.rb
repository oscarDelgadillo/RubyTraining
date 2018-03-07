# Using instanced class and also applying singleton :
# 1. Add a class that initialized the values of :
#     User : Guest
#     Message : Welcome to the city
#     Visitors : 0
# 2. Inside the class add a method to :
#     a) Add a user
#     b) Add a welcome message
#     c) Increment visitors amount
#     d) Save all the users, and messages in a hash
#     e) Using attr_accesor print the last user defined
# Explain which differences you see between both definitions


require 'singleton'
class Base
  attr_accessor :My_hash
  include Singleton

  def initialize
    @user = "Guest"
    @message = "Welcome to the city"
    @visitors = 0
    @My_hash = {}
  end

  def add_user(user)
    @user = user
  end

  def add_message(message)
    @message = message
  end

  def increment_visitors
    @visitors += 1
  end

  def save_user
    @My_hash.store @user, @message
  end
end

b1 = Base.instance
b1.add_user("test")
b1.increment_visitors
b1.save_user
b1.add_user("test2")
b1.increment_visitors
b1.save_user

p b1.My_hash

b2 = Base.instance
b2.add_user("test3")
b2.increment_visitors
b2.save_user

p b2.My_hash

p b2.My_hash.to_a.last
