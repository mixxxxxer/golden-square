require 'add_five'

RSpec.describe 'add_five method' do
  it 'Test 1.adds 5 to 3 to return 8' do
    result = add_five(3)
    expect(result).to eq 8
  end
  it 'Test 2. adds 5 to 5 to return 10' do
    result = add_five(5)
    expect(result).to eq 10
  end
  it 'Test 3. adds 5 to -1 to return 4' do
    result = add_five(-1)
    expect(result).to eq 4
  end
  it 'Test 4. adds 5 to 100 to return 105' do
    result = add_five(100)
    expect(result).to eq 105
  end
  it 'Test 5. adds 5 to 1 to return 6' do
    result = add_five(1)
    expect(result).to eq 6
  end
end
