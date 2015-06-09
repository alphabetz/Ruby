#practice unless inw 

class Player

  attr_accessor :name
  attr_reader :health
 
  def initialize(name,health=100)
    @name = name
    @health = health
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and score of #{score}"
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def woot
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def score
    @health + name.length
  end
  
end

player1 = Player.new( "Moe")
puts player1
puts player1.name
puts player1.health
puts player1.score
puts player1

player2 = Player.new( "Larry", 60 )
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2

player3 = Player.new( "Curly", 125 )
puts player3
player3.blam
player3.woot
puts player3