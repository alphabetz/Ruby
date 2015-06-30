require '../2.rb'

describe "arithmetic2" do
  it 'return 0.5 when input (1, 2)' do
    expect(arithmetic2 1, 2).to eq(0.5)
  end
  
  it 'return 5.0 when input (19, 10)' do
    expect(arithmetic2 19, 10).to eq(5.0)
  end
  
  it 'return -3.5 when input (-6, -7)'do
    expect(arithmetic2 -6, -7).to eq(-3.5)
  end
end
