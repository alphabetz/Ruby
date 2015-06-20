#Given a number from 1 to 4 (inclusive), return a word representation of the number. For example, given 2, #return two. If the number is greater than 4, return the phrase too large. If the number is less than 1, return #the phrase too small.

#Input/Output Format
#Boilerplate code is provided for Java. For other languages, read in the numbers from the standard input in the #following format.

#    The input starts with N, the number of cases.
#    N lines follow, which each contains 1 integer

def number_convert(number)
  
  if number < 1
    converted = "too small"
  elsif number > 4
    converted = "too large"
  elsif number == 1
    converted = "one"
  elsif number == 2
    converted = "two"
  elsif number == 3
    converted = "three"
  else converted = "four"
  end
  
  return converted
end

loop do
  print "Enter number to convert or 'exit': "
  n = gets.chomp
  
  case n
    when /^\d+$/
      puts number_convert(n.to_i)
    when 'exit'
      exit(0)
    else 
      puts "Please read the fucking manual!!!"
  end
end

