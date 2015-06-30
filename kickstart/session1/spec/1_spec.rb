require '../1.rb'

describe "arithmetic1" do
  it 'return 30 when input 10' do
    expect(arithmetic1 10).to eq(30)
  end
  
  it 'return 32.5 when input 10.5' do
    expect(arithmetic1 10.5).to eq(32.5)
  end
  
  it 'return -50 when input -6'do
    expect(arithmetic1 -6).to eq(-50)
  end
end
