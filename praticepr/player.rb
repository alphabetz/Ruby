class Player

  attr_accessor :name
  attr_reader :health
 
  def initialize(name,health=100)
    @name = name.capitalize
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

#if run current file($0)
if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end