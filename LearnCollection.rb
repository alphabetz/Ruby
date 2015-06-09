#Ruby Collection

#Multi argument to passing multi args  

#Array
def add_authors ( *names ) # '*' jargon is splat
  @authors = "#{names.join(' ')}"
  puts @authors 
end

add_authors('John', 'Snow')

#Hash
def load_font( *specific_hash )
  #Load a font here
  puts specific_hash
end

load_font( { :name => 'times roman', :size => 12} )
#If hash is end of argument list we can..
load_font( :name => 'times roman', :size => 12)

###########################################################################

#Running Through Collection

#Ruby loop

words = %w{ Mary had a little lamb }

words.each { |word| puts word }

#Hashes loop if supply block for single argument
movie = { ttile: '2001', genre: 'sci fi', rating: 10 }

movie.each { |entry| print entry  }

#Hashes loop if supply block for two arguments

movie.each { |name, value| puts "#{name} => #{value}" }

#Array API example
def average_word_length
 totl = words.inject(0.0) { |result, word| word.size + result }
 total / word_count
 #Inject method will replace the current result with the return value of the previous call to the block
end






















