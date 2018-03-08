# Create a class for a flight :
# 1.Reservation information ID with name, last name, Address, phone, years. If the user is less than 18 years old
#   then add another extra information :
#     TYPE: CHILD (By default should be ADULT)
# 2. Method that will load the itinerary : Origin, Destination, #of flight, # of passenger
# 3. Method to add passengers to a flight. If the flight is full return a message that should pickup another flight.
# For this cases you should use hashes to save the data and also variables to keep the values.

class Passenger

  def initialize(name, last_name, address, phone, years)
    @name = name
    @last_name = last_name
    @address = address
    @phone = phone
    @years = years
    @type = years < 18 ? "Child" : "Adult"
  end

  def get_full_name
    @name + " " + @last_name
  end

end

class Flight

  attr_reader :itinerary
  attr_reader :passengers

  def initialize
    @itinerary = {}
    @passengers = {}
  end

  def load_itinerary
    print "Insert origin: "
    origin = gets.chomp
    print "Insert destination: "
    destination = gets.chomp
    print "Insert number of flight: "
    number_flight = gets.chomp
    print "Insert number of passengers: "
    number_passengers = gets.chomp.to_i
    @itinerary.store "Origin", origin
    @itinerary.store "Destination", destination
    @itinerary.store "Number_Flight", number_flight
    @itinerary.store "Number_Passengers", number_passengers
  end

  def add_passenger(passenger)
    if @passengers.size < @itinerary['Number_Passengers']
      @passengers.store @passengers.size + 1, passenger
    else
      puts "The flight is full. #{passenger.get_full_name} you should pickup another flight."
    end
  end
end

p1 = Passenger.new("Homero", "Simpsons", "xyz", 123465, 40)
p2 = Passenger.new("March", "Simpsons", "xyz", 123465, 30)
p3 = Passenger.new("Bart", "Simpsons", "xyz", 123465, 12)
p4 = Passenger.new("Lisa", "Simpsons", "xyz", 123465, 10)

flight = Flight.new
flight.load_itinerary
flight.add_passenger(p1)
flight.add_passenger(p2)
flight.add_passenger(p3)
flight.add_passenger(p4)

p flight.itinerary
p flight.passengers
