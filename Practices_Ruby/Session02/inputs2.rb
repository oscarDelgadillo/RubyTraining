# 1. Modify your previous scrip and instead of gets use gets.chomp
# 2. Print the values inserted by user
# 3. What is the difference between this result and the previous?
# The difference is that gets.chomp remove carriage returns character and gets store that character.

print "Were did you work?: "
your_job = gets.chomp

puts "Its nice to hear to you work in #{your_job}."