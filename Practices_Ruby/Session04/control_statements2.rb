# Create a class for a flight :
# 1.Reservation information ID with name, last name, Address, phone, years. If the user is less than 18 years old
#   then add another extra information :
#     TYPE: CHILD (By default should be ADULT)
# 2. Method that will load the itinerary : Origin, Destination, #of flight, # of passenger
# 3. Method to add passengers to a flight. If the flight is full return a message that should pickup another flight.
# For this cases you should use hashes to save the data and also variables to keep the values.

class Client

  def initialize(name, last_name, address, phone, years)
    @name = name
    @last_name = last_name
    @address = address
    @phone = phone
    @years = years
    @type = years < 18 ? "Child" : "Adult"
  end
end

class Flight

  def load_itinerary
    itinerary = {}
    print "Insert origin: "
    origin = gets.chomp
    print "Insert destination: "
    destination = gets.chomp
    print "Insert number of flight: "
    number_flight = gets.chomp
    print "Insert number of passengers: "
    number_passengers = gets.chomp
    itinerary.store "Origin", origin
    itinerary.store "Destination", destination
    itinerary.store "Number_Flight", number_flight
    itinerary.store "Number_Passengers", number_passengers
    return itinerary
  end

  def add_passengers(itinerary, people)
    i = 0
    passengers = {}
    while i < itinerary['Number_Passengers'].to_i do
      passengers.store i, people[i]
      i += 1
    end
    # if i < itinerary['Number_Passengers'].to_i
    if i > itinerary['Number_Passengers'].to_i
      puts "Flight is full"
    end
    puts "Passengers on Flight: #{passengers}"
    puts "Limit of Passengers: #{itinerary['Number_Passengers']}"
  end
end

client1 = Client.new("Homero", "Simpsons", "xyz", 123465, 40)
client2 = Client.new("March", "Simpsons", "xyz", 123465, 30)
client3 = Client.new("Bart", "Simpsons", "xyz", 123465, 12)
client4 = Client.new("Lisa", "Simpsons", "xyz", 123465, 10)
passengers = []
passengers.push(client1)
passengers.push(client2)
passengers.push(client3)
passengers.push(client4)
flightObject = Flight.new
itinerary = flightObject.load_itinerary
flightObject.add_passengers(itinerary, passengers)
