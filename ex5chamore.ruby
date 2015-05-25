print "Enter your weight(in pound) : "
weight = gets.chomp.to_f/2.25
print "Enter your height in inches : "
height = gets.chomp.to_f*2.54
puts "Your weight is %.2f kilograms and your height is %.2f centimerters" %[weight,height]
