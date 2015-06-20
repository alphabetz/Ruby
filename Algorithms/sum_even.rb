#ให้เขียน method ชื่อ sumEven() รับ array ที่มีเลขจำนวนเต็ม แล้วส่งผลลัพธ์เป็นผลรวมของเลขคู่ เช่น
#A = {1, 2, 3, 4, 5, 6};
#sumEven(A) = 12

#Method 1 the normal way
def sum_even(array)
  sum = 0
  for i in array
    if i % 2 == 0
      sum = sum + i
    end
  end
  puts sum   
end

#Method 2 the Ruby's way
def sum_even_ruby(array, sum = 0)
  array.each { |n| sum += n if n.even?}
  puts sum
end

a = (1..6).to_a
sum_even(a)
sum_even_ruby(a)

