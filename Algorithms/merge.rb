#ให้เขียน method ชื่อ merge รับ array 2 อัน เป็นข้อมูลที่เรียงกันอยู่แล้ว ให้ merge หรือ ผสาน array เข้าด้วยกัน เช่น
#A = {1, 3, 5, 7, 9};
#B = {2, 4, 6, 8};
#merge(A, B) = {1,2,3,4,5,6,7,8,9};

#The normal way
def merge(a, b)
  answer = [a.length + b.length]
  i = 0 ; j = 0; k = 0
  
  while i < a.length && j < b.length
    if a[i] < b[j]
      answer[k] = a[i]
      i += 1
    else answer[k] = b[j] ; j += 1
    end
    k += 1
  end
  puts i
  puts j
  puts k
  
  while i < a.length
    answer[k] = a[i]
    i += 1
    k += 1
  end
  
  while j < b.length
    answer[k] = b[j]
    j += 1
    k += 1
  end
 
  return answer
end

#The Ruby's way can't figure it out yet!

a = [1, 3, 5, 7, 9]
b = [2, 4, 6, 8]

print merge(a, b)
print "\n \n \n"
print "Ruby's way\n"
print merge_ruby(a, b)
