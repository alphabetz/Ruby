module StudioGame
  module Playable

    def w00t
      self.health += 15
      puts "#{name} get w00ted!"
    end
    
    def blam
      self.health -= 10
      puts "#{name} get blammed!"
    end
    
    def strong?
      self.health > 100
    end
    
  end
end
