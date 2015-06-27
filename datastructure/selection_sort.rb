#Selection sort

def selection_sort(array)
  print array
  print "\n"
  0.upto(array.size - 2).each do |j|
    min_index = j
    (j + 1).upto(array.size - 1).each do |i|
      min_index = i if array[i] < array[min_index]
    end
    array[j], array[min_index] = array[min_index], array[j]
    puts "After round"
    print array
    print "\n"
  end
  return array
end

array = [22, 11, 99, 88, 9, 7, 42]

print selection_sort(array)
