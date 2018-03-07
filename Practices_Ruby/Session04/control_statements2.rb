# Create a class for a flight :
# 1.Reservation information ID with name, last name, Address, phone, years. If the user is less than 18 years old
#   then add another extra information :
#     TYPE: CHILD (By default should be ADULT)
# 2. Method that will load the itinerary : Origin, Destination, #of flight, # of passenger
# 3. Method to add passengers to a flight. If the flight is full return a message that should pickup another flight.
# For this cases you should use hashes to save the data and also variables to keep the values.

class Flight

  def initialize(name, last_name, address, phone, years)
    @name = name
    @last_name = last_name
    @address = address
    @phone = phone
    @years = years
    @type = years < 18 ? "Child" : "Adult"
  end
end

flights = []
flight = Flight.new("Oscar", "Delgadillo", "xyz", 123465, 3)
flights.push(flight)
flights.push(flight)
puts flights.length