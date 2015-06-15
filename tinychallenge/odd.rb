#Print the odd numbers from 1 to 99, one number per line.

arr = (1...100).to_a

arr.each do |num|
  if num % 2 != 0
    puts num
  end
end
