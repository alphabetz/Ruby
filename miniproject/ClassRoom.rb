class Room

	#def initialize(choice)
	#	@room_choice = room_choice
	#end

	def message(choice)
		puts "You are in the room #{choice} now"
	end
	
	def fight
	
	    puts "Now you will fight with some monster you didn't see, the only hope is bet on your luck!"
	    sleep(5)
	    puts """
	    .....................................
	    .....................................
	    .....................................
	    .....................................
	    .....................................
	    .....................................
	    GOOD LUCK!!!!!!!
	    """
	    while true
	    player_hp = rand(10)
	    com_hp = rand(10)
	    
	        puts "Your hp is #{player_hp}"
	        puts "Monster hp is #{com_hp}"
	            if player_hp == com_hp
	                puts "Let's try again!"
	            elsif player_hp > com_hp
	                puts "You win!!!"
	                exit(0)
	            else
	                puts "You are dead!!!"
	                exit(0)
	            end
	     end
	end
	
	def story(choice)
	
	    if choice == 1
	        puts "Prepare to fight!!!"
	       
	   
	    elsif choice == 2
	        puts "There's something very bright and it burned you!"
	        exit(0)
	    else
	        puts("You dead without reason")
	        exit(0)
	    end
	    
	end
	

end

