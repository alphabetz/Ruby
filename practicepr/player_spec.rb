require_relative 'player'

describe Player do
  before do
    @initial_health = 150
    @player = Player.new( "larry", @initial_health)
    $stdout = StringIO.new
  end


  it "has a capitilized name" do
    expect(@player.name).to eq("Larry")
  end
  
  it "has a initial health of 150" do
    expect(@initial_health).to eq(150)
  end
  
  it "has string representation" do
    expect(@player.to_s).to eq("I'm Larry with a health of #{@initial_health} and score of 155")
  end
  
  it "score should be a sum of health and length" do
    expect(@player.score).to eq( 155 )
  end
  
  it "Woot should increases health by 15" do
    @player.w00t
    expect(@player.health).to eq( @initial_health + 15 )
  end
  
  it "Blam should decreases health by 10" do
    @player.blam
    expect(@player.health).to eq( @initial_health - 10 )
  end
  
  context "Create with default health" do
  
    before do
      @player = Player.new( "Larry" )
    end
    
    it "has health of 100" do
      expect( @player.health ).to eq( 100 )
    end
     
  end
  
  context "With default health greater than 100" do
    
    before do
      @player = Player.new( "Larry", 150 )
    end
    
    it "is stong?" do
      expect( @player ).to be_strong
    end
    
  end
  
  context "with start health less or equal than 100" do
  
    before do
      @player = Player.new( "Moe", 100 )
    end
    
    it "is wimpy?" do
      expect( @player ).to_not be_strong
    end
    
  end
  
  context "in collection of players" do
     before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end
    
    it "is sorted by decreasing score." do
      expect(@players.sort).to eq([@player3, @player2, @player1])
    end
  end
  
end
