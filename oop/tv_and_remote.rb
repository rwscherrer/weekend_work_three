# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_reader :power, :volume, :channel, :tv
  attr_writer :power, :volume, :channel

  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
    @tv = input_options[:tv]
  end

  def power=(new_value)
    @power = new_value
  end

  def volume=(new_value)
    @volume = new_value
  end

  def channel=(new_value)
    @channel = new_value
  end

end

class Remote < Tv
  attr_accessor :power, :volume, :channel, :tv

  def initialize(input_options)
    super(input_options)
  end

  def remote
    @remote = remote
  end

  def toggle_power
    if @power == true
      @power = false
      puts @power
    else
      @power = false
      puts @power
    end
  end

  def increment_volume
    @volume += 1
    puts @volume
  end

  def decrement_volume
    @volume -= 1
    puts @volume
  end
end

#Driver code

puts "Testing the Tv class..."
puts

tv = Tv.new({power: false, volume: 10, channel: 2, tv: "bedroom"})

result = tv.tv

puts "tv returned"
puts result
puts

if result == "bedroom"
  puts "PASS!"
else
  puts "F"
end

result = tv.volume

puts "volume returned"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = tv.channel

puts "channel returned"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

result = tv.power

puts "power returned"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end

result = @toggle_power

puts "toggle_power returned"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = @increment_volume

puts "increment_volume returned"
puts result
puts

if result == 11
  puts "PASS!"
else
  puts "F"
end

result = @decrement_volume

puts "decrement_volume returned"
puts result
puts

if result == 9
  puts "PASS!"
else
  puts "F"
end




