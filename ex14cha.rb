user = ARGV[0]
friend = ARGV[1]
prompt = '> '

puts "Hi #{user} and #{friend}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}, #{friend}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()
puts "And yours? #{friend}"
print prompt
f_lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()
puts "What yours? #{friend}"
print prompt
f_computer = STDIN.gets.chomp()


puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives} and #{friend} live in #{f_lives}. Not sure where that is.
And you have a #{computer} computer also #{friend}\'s #{f_computer}. Nice.
MESSAGE
