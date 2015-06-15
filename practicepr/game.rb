require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game

  attr_accessor :title
 
  def initialize( title )
    @title = title
    @players = []
  end
 
  def add_player( a_player )
    @players << a_player
  end
 
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}: "
    @players.each { |player| puts player }
   
    treasures = TreasureTrove::TREASURES
    puts "\nthere are #{treasures.size} of treasures to be found:"
     
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
     
    1.upto(rounds) do |round|
      @players.each do |player|
        GameTurn.take_turn( player )
        puts player
      end
    end
  end
 
  def print_name_health( player )
    puts "#{player.name} has #{player.health}"
  end
  
  def total_points
    @players.reduce(0) { |sum, player| sum + player.points }
  end
 
  def print_stats
    puts "\n#{@title} Statistics:"
    
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    
    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_health(player)
    end
    
    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_health(player)
    end
    
    puts "\n#{total_points} total points from treasures found"
    @players.each do |player|
      puts "\n#{player.name}'s point totals:"
      puts "#{player.points} grand total points"
    end
    
    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
  end
 
end
