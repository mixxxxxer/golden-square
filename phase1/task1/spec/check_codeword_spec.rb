require 'check_codeword'

RSpec.describe "codeword method" do
  it 'test 1. "horse" should return "Correct! Come in."' do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it 'test 2. "he" should return "Close, but nope."' do
    result = check_codeword("he")
    expect(result).to eq "Close, but nope."
  end
  it 'test 3. "horses" should return "WRONG!"' do
    result = check_codeword("horses")
    expect(result).to eq "WRONG!"
  end
  it 'test 3. "horses" should return "WRONG!"' do
    result = check_codeword("horses")
    expect(result).to eq "WRONG!"
  end
end