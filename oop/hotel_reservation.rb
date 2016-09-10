# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "Testing Hotel Reservation class"
puts

reservation_info = HotelReservation.new({customer_name: "John Smith", date: "12/31/16", room_number: 101, amenities: ""})

result = reservation_info.customer_name

puts "customer_name returned"
puts result
puts

if result == "John Smith"
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation_info.date

puts "date returned"
puts result 
puts 

if result == "12/31/16"
  puts "PASS!"
else
  puts "F"
end
puts 


result = reservation_info.room_number

puts "room_number returned"
puts result
puts
 if result == 101
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation_info.add_a_fridge

puts "add_a_fridge returned"
puts result
puts

if result.include? "fridge"
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation_info.add_a_crib

puts "add_a_crib returned"
puts result
puts

if result.include? "crib"
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation_info.add_a_custom_amenity("fruit basket")

puts "add_a_custom_amenity returned"
puts result
puts 

if result.include? "fruit basket"
  puts "PASS!"
else
  puts "F"
end
puts




