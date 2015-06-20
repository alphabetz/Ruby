def do_search(array, target_value)
  
  min = 0
  max = array.length - 1
  @count = 0
  
  until max < min do
    @count += 1
    guess = (min + max) / 2
    puts "Now the values is #{array[guess]}"
    
    if array[guess] == target_value
      return guess
      break
    elsif array[guess] < target_value
      min = guess + 1
    else max = guess -1 
    end
    
  end
  
  
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
		
result = do_search(primes, 41)

  if result
    puts "I found it! at index #{result} and it took #{@count} count to guess"
  else puts "No index" 
  
  end
