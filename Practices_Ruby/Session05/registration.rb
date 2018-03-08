# Create two classes:
# - Registration class
#   * Should have a method to ask for Username and ID, by default those values should be initialized as null.
#       - Username should have the conditions :
#             -- no more than 11 characters
#             -- Only accept lower case and/or numbers
#       - Both values should be saved in a hash and handled using setter and/or getter
#   * Should have a  validation method for the amount of users, no more than 15 but not less of 3

require './modules.rb'
require 'singleton'

class Registration
  attr_accessor :hash_reg
  include Time_conversion
  include Distance_conversion
  include Singleton

  def initialize
    @username = nil
    @ID = nil
    @hash_reg = {}
  end

  def add_user
    print "Insert username: "
    username = gets.chomp
    if username =~ /^[a-z0-9]{1,11}$/
      @username = username
      print "Insert ID: "
      @ID = gets.chomp
      @hash_reg.store @ID, @username
    end
  end

  def ask_username_id
    if @hash_reg.size < 3
      while @hash_reg.size < 3
        add_user
      end
    elsif @hash_reg.size >= 3 && @hash_reg.size < 15
      add_user
    end
  end
end

=begin
tmp = Registration.instance
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
tmp.ask_username_id
puts tmp.hash_reg
=end


