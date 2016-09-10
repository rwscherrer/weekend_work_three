# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)

  reps = mutation.length
  true_count = 0
  mutation.each_char do |letter|
    if base_word.include? mutation[reps - mutation.length]
      reps -= 1
      true_count += 1
    end
  end
if true_count == mutation.length
  true 
else
  false
end

end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end