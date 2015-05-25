#This for read file that created on EX16
filename = ARGV.first

txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()
puts txt.close()

