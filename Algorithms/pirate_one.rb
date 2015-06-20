#You're the captain of a pirate ship and would like to calculate whether your trip was a success. You are given #two parameters - gold and pirates.
#
#The trip is a success iff there is at least as much gold as pirates. However, if gold + pirates > 100, then the #trip is a failure, since the ship may sink. Return true if the ship was a success and false if it was a failure.

def calculate(a, b) 
  return false if a + b > 100 || b == 0
  if b > a then return true else return false end
end

gold = gets.chomp.to_i

pirate = gets.chomp.to_i

puts calculate(gold, pirate)
