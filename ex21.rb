def add (a,b)
	puts "ADDING #{a} + #{b}"
	a+b
end

def subtract(a,b)
	puts "SUB #{a} - #{b}"
	a-b
end

def multiply(a,b)
	puts "MULTI #{a} * #{b}"
	a*b
end

def divide(a,b)
	puts "DIVIDING #{a} / #{b}"
	a/b
end

puts "Let's do math with just functions!"

age = add(30,5)
height = subtract(78,4)
weight = multiply(90,2)
iq = divide(100,2)

puts "Age : #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

#Extra Credit

puts "Here us a puzzle."

what = add(age,subtract(height,multiply(weight,divide(iq,2))))

puts "That become #{what} can you do it by hand?"

puts "Extra Credit Function Create"

create = multiply(600,700) / divide(20000,2) * add(height,subtract(weight+12,iq)) - 30

puts "Here #{create}"
