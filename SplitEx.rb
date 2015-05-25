# Split this string on a space.
input = "one two three"
values = input.split(' ')

puts "this is before split " +input

# Display each value after spit to the console.
puts "This AFTER split!"
values.each do |value|
    puts value
end
