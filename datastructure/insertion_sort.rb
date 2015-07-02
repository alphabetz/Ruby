#ให้เขียน method ชื่อ insertionSort รับ array ของตัวเลขเข้ามาแล้วเรียงข้อมูลด้วยวิธี insertion sort

def insertion_sort(list)

  (1..list.length - 1).each do |index|
    value = list[index]
    i = index - 1
    while i >= 0 && value < list[i]
        list[i+1], list[i] = list[i], value #swap
        i = i - 1
    end
  end
end

list = [2, 1, 3, 2]
insertion_sort(list)
print list
