require_relative 'game'

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
    
    @game.play
    expect( @player.health ).to eq( @initial_health + 15 )
  end
  
  it 'skip player if medium number rolled' do
    allow_any_instance_of(Die).to receive(:roll).and_return(3)
    
    @game.play
    expect( @player.health ).to eq( @initial_health )
  end

  it 'blam player if low number rolled' do
    allow_any_instance_of(Die).to receive(:roll).and_return(1)
    
    @game.play
    expect( @player.health ).to eq( @initial_health - 10 )
  end

end
 
