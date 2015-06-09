# Binary Search implementation
# First Draft
class Array

  def binary_search(val, left = 0, right = nil)
    right = self.size - 1 unless right
    mid = (left + right) / 2
    return nil if left > right
 
    if val == self[mid]
      return mid
    elsif val > self[mid]
      binary_search(val, mid + 1, right)
    else
      binary_search(val, left, mid - 1)
    end
    
  end
  
end

arr = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97].sort

puts [67].map { |i| arr.binary_search(i)}.join(', ')
