def insertion_sort(list)
  beginning_time = Time.now
  
  (1..list.length - 1).each do |index|
    value = list[index]
    i = index - 1
    while i >= 0 && value < list[i]
        list[i+1], list[i] = list[i], value #swap
        i = i - 1
    end
  end
     
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)}"
end

