#Assign argument filename ARGV[0]
filename = ARGV.first

#Assign prompt value = >
prompt= "> "
#Assign File.opento open file and keep in variable call 'txt'
txt = File.open(filename)

#print sentence with flename that entered above
puts "Here's your file: #{filename}"
#set method to read
puts txt.read()
puts txt.close()
puts "I'll also ask you to type it again: "
print prompt

#Get file name again variable
file_again = STDIN.gets.chomp()

#Call File open to open file
txt_again = File.open(file_again)

#Read file again
puts txt_again.read()
puts txt_again.close()
