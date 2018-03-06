# 1. Create a ruby class with including two methods :
#   One method to calculate and print the area of a circle :
#     radius * 2 * PI
#   One method to calculate and print the perimeter 	of a circle
#   radius * radius * PI
#   Call to the methods in order to see the result printed

class Circle
  def area(radius)
    area = radius * 2 * Math::PI
    puts "The area of the circle is #{area.round(2)}"
  end
  def perimeter(radius)
    perimeter = radius * radius * Math::PI
    puts "The perimeter of the circle is #{perimeter.round(2)}"
  end
end

print "Insert radius of the circle: "
radius = gets.to_f
circle = Circle.new
circle.area(radius)
circle.perimeter(radius)
