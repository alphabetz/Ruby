require 'studio_game/game'

module StudioGame
  describe Game do

    before do
      @game = Game.new("Knuckleheads")
      
      @initial_health = 100
      @player = Player.new("moe", @initial_health)
      
      @game.add_player(@player)
    end

    it 'has title' do 
      expect(@game.title).to eq("Knuckleheads") 
    end
    
    it 'w00t player if higher number rolled' do
      #Die.any_instance.stub( :roll ).and_return(5)
      allow_any_instance_of(Die).to receive(:roll).and_return(5)
      
      @game.play(2)
      
      expect( @player.health ).to eq( @initial_health + (15 * 2) )
    end
    
    it 'skip player if medium number rolled' do
      allow_any_instance_of(Die).to receive(:roll).and_return(3)
      
      @game.play(2)
      
      expect( @player.health ).to eq( @initial_health )
    end

    it 'blam player if low number rolled' do
      allow_any_instance_of(Die).to receive(:roll).and_return(1)
      
      @game.play(2)
      
      expect( @player.health ).to eq( @initial_health - (10 * 2) )
    end
    
    it "assigns a treasure for points during a player's turn" do
      game = Game.new("Knuckleheads")
      player = Player.new("moe")
      
      game.add_player(player)
      game.play(1)
      
      expect(player.points).to_not be_zero
    end
    
    it "computes total points as the sum of all player points" do
      game = Game.new("Knuckleheads")
      player1 = Player.new("moe")
      player2 = Player.new("Larry")
      
      game.add_player(player1)
      game.add_player(player2)
      
      player1.found_treasure(Treasure.new(:hammer, 50))
      player1.found_treasure(Treasure.new(:hammer, 50))
      player2.found_treasure(Treasure.new(:crowbar, 400))
      
      expect(game.total_points).to eq(500)
    end

  end
end
 
