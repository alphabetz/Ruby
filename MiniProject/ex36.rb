def dead(why)
	puts why
	exit(0)
end


def main
	user = ARGV[0].upcase
	puts "#{user}!!! you are wake up in somewhere in the world"
	puts "It was hot and bright made your eyes burn"
	puts "You need to get in somewhere to avoid burning"
	puts "Lucky! There are 3 rooms which you want to?"

	print ">"
	choice = $stdin.gets.chomp.to_i

	if choice.between?(4,9)
		dead("You standing on the ground until you burned")
	end

	if choice == 1
			puts "1"
	elsif choice == 2
			puts "2"
	else
			puts "3"
	end

end

main
