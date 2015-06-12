#Project Euler, Problem 1
#
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def multiple_three_and_five_normal
  
  totalnum = 0
  (1...1000).each do |i|
    if i % 3 == 0 || i % 5 == 0
      totalnum += i
    end
  end
  
  puts totalnum
  
end


#Ruby way maybe
def multiple_three_and_five_ruby( arr, range )
 
  range.inject(0) do |sum, n|
    arr.any? { |i| n % i == 0 } ? sum + n  : sum 
  end 
  
end

puts multiple_three_and_five_normal
puts multiple_three_and_five_ruby( [3,5], 0..999)
