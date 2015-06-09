require_relative 'player.rb'

class Game

 attr_reader :title
 
 def initialize( title )
   @title = title
   @players = []
 end
 
 def add_player( a_player )
   @players << a_player
 end
 
 def play
   puts "There are #{@players.size} players in this game #{@title}"
   @players.each { |player| puts player }

   @players.each { |player| puts player.health }

   @players.each do |player|
     player.blam
     player.woot
     player.woot
     puts player  
   end

 end
 
end
