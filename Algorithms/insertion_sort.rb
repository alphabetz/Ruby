#ให้เขียน method ชื่อ insertionSort รับ array ของตัวเลขเข้ามาแล้วเรียงข้อมูลด้วยวิธี insertion sort

def insertion_sort(list)

  (1..list.length - 1).each do |index|
    value = list[index]
    i = index - 1
    until i < 0 do 
      if value < list[i]
        list[i+1], list[i] = list[i], value
        i = i - 1
      else
        break
      end
    end
  end
end

list = [2, 1, 3, 2]
insertion_sort(list)
print list
