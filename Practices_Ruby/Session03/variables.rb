# Create a class named father
# 1. father should have some amount of money.
# 2. Add 3 different child classes that are going to take some of the money.
# 3. Print the amount that each child is taking
# 4. Print the amount of money that Father have at the end.


class Father
  @@money = 3000
  def self.my_money
    puts "Father have #{@@money} $us."
  end
end

class Son1 < Father
  def self.take_money(money)
    puts "First son take #{money} $us."
    @@money = @@money - money
  end
end

class Son2 < Father
  def self.take_money(money)
    puts "Second son take #{money} $us."
    @@money = @@money - money
  end
end

class Son3 < Father
  def self.take_money(money)
    puts "Third son take #{money} $us."
    @@money = @@money - money
  end
end

Father.my_money
Son1.take_money(1000)
Son2.take_money(300)
Son3.take_money(500)
Father.my_money
