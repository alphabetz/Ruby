#Selection sort

def selection_sort(list)
  puts "initial list: #{list}"
  
  (0..list.length - 1).each do |i|
    min_index = i
    (i+1..list.length - 1).each do |j|
      if list[j] < list[min_index]
        min_index = j
      end
    end
    list[i], list[min_index] = list[min_index], list[i]
  end
  puts "sorted list: #{list}"
end

list = (1..100).to_a.shuffle

selection_sort(list)
