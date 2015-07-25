# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
  
  if a < b
    return a.to_f / 2
  elsif a > b
    return b.to_f / 2
  end
end

puts arithmetic2(1, 2)
puts arithmetic2(19, 10)
puts arithmetic2(-6, -7)