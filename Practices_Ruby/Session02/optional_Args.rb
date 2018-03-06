# Write 1 script that prints a passenger name ,a destination city and the price of ticket in dollars.
# 1. The name should be received from the user
# 2. If no destination is defined the value by default should be CBBA.
# 3. The price of the ticket should be received by user, and the transformation to dollars should be returned from the method. It should be  float (E.g 150.25)
# 4. Perform the calculation using variables, to return the value don’t use return word
# 5. When you call the method, don’t use parenthesis
# 6. After call the method don’t forget to print the value returned.

def price_to_dollar price
  price.to_f.round(2)
end

def ticket_passenger(name, price, destination = "CBBA")
  puts "========== TICKET =========="
  puts "Name passenger: #{name}"
  puts "Destination: #{destination}"
  puts "Price of ticket: #{price_to_dollar price} $us."
  puts "============================"
end

ticket_passenger "Oscar", 100.43
ticket_passenger"Juan", 155.249, "La Paz"