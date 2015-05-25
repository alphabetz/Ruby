from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#We could do these two on one line too, how?
#input = File.open(from_file)
#indata = input.read

indata = File.read(from_file)

puts "Does the output file exist? #{File.exists? to_file}"


output = File.open(to_file, 'w').write(indata)



