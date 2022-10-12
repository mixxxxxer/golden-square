require 'greet'

RSpec.describe 'greet method' do
  it 'test1 - adds Mike should return Hello, Mike!' do
    result = greet('Mike')
    expect(result).to eq 'Hello, Mike!'
  end
  it 'test2 - adds Pit should return Hello, Pit!' do
    result = greet('Pit')
    expect(result).to eq 'Hello, Pit!'
  end
  it 'test3 - adds Ruby should return Hello, Ruby!' do
    result = greet('Ruby')
    expect(result).to eq 'Hello, Ruby!'
  end
  it 'test1 - adds Sam should return Hello, Sam!' do
    result = greet('Sam')
    expect(result).to eq 'Hello, Sam!'
  end
  it 'test1 - adds 0001 should return Hello, 0001!' do
    result = greet('0001')
    expect(result).to eq 'Hello, 0001!'
  end
end