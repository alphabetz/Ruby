require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")
  end

  it 'has title' do 
    expect(@game.title).to eq("Knuckleheads") 
  end
  
  it '2 wooted and 1 blamed should affect health' do
    initial_health = 100
    player = Player.new("Larry", initial_health)
    
    @game.add_player(player)
    @game.play
    
    expect(player.health).to eq( initial_health + 15 + 15 - 10)
  end

end
 