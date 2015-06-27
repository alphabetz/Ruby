#ให้เขียน method ชื่อ insertionSort รับ array ของตัวเลขเข้ามาแล้วเรียงข้อมูลด้วยวิธี insertion sort

def insertion_sort(array)
  i = 0
  j = 1
  temp = []
  
  for i in array
    for j in array
      if array[i] > array[j]
        temp[0] = array[j]
        puts temp[0]
        array[j] = array[i]
        puts array[j]
      end
      j += 1
    end
    i += 1
    
    #puts array
  end
    
end

array = [4, 2]
insertion_sort(array)
