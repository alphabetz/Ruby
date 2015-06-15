
#Ruby way maybe
def multiple_three_and_five_ruby( arr, range )
 
  range.inject(0) do |sum, n|
    arr.any? { |i| n % i == 0 } ? sum + n  : sum 
  end 
  
end

#puts multiple_three_and_five_normal
puts multiple_three_and_five_ruby( [3,5], 0..999)
