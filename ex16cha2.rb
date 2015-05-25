#This for remove repitation of EX16
filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CRTL+C."
puts "If you do want that ,hit enter."

print "?"
STDIN.gets

puts "Openning the file..."
target = File.open(filename, 'w')

puts "Truncating the file Goodbye!"

#Truncates file to at most integer bytes. That means you are deleting the file contents fully and making the file size as zero
target.truncate(target.size)

puts "Now i'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1 + "\n" + line2 + "\n" + line3 +"\n")

puts "And finally we close it."
target.close()


