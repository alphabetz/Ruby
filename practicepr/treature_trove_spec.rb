require_relative 'treasure_trove'

describe Treasure do

  before do
    @treasure = Treasure.new(:hammer, 50)
  end
  
  it 'has name' do
    expect(@treasure.name).to eq(:hammer)
  end
  
  it 'has point' do
    expect(@treasure.points).to eq(50)
  end
end

describe TreasureTrove do

  it 'has six treasures' do
    expect(TreasureTrove::TREASURES.size).to eq(6)
  end
  
  it 'pie worth 5 points' do
    expect(TreasureTrove::TREASURES[0].points).to eq(5)
  end
  
  it 'bottle worth 25 points' do
    expect(TreasureTrove::TREASURES[1].points).to eq(25)
  end
  
  it 'hammer worth 50 points' do
    expect(TreasureTrove::TREASURES[2].points).to eq(50)
  end
  
  it 'skillet worth 100 points' do
    expect(TreasureTrove::TREASURES[3].points).to eq(100)
  end
  
  it 'broomstick worth 200 points' do
    expect(TreasureTrove::TREASURES[4].points).to eq(200)
  end
  
  it 'crowbar worth 400 points' do
    expect(TreasureTrove::TREASURES[5].points).to eq(400)
  end
  
  it 'return random treasure' do
    treasure = TreasureTrove.random
    expect(TreasureTrove::TREASURES).to include(treasure)
  end
end
