#มีเลขจำนวนเต็มที่ไม่เหมือนกันอยู่ใน array กำหนดตัวเลข K ให้เขียน sum2(A, K) เพื่อหาว่ามีตัวเลข 2 ตัวใน array ที่รวมกันได้ K หรือไม่ 

#The normal way
def sum2(array, k = 8)
  print "Array contains =>"
  print array
  print "\n"
  for i in 0..array.length - 1
    j = i + 1
    for j in j..array.length - 1
      if array[i] + array[j] == k
        puts "#{array[i]} + #{array[j]} = #{k}"
      end
    end
  end
end


#The Ruby's way
def sum2_ruby(array, k = 8)
  return false if array.empty? && k.zero?
  puts array.combination(2).any? {|a, b| a + b == k }
end


a = (1..10).to_a
sum2(a)
sum2_ruby(a)


