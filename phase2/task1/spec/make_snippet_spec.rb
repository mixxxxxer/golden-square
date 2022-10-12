require 'make_snippet'

RSpec.describe "make_snippet tests:" do
  it "Test 1. Check empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end
  it "Test 2. Check string with 3 words" do
    result = make_snippet("one two three")
    expect(result).to eq "one two three"
  end
  it "Test 3. Check string with 5 words" do
    result = make_snippet("one two three four five")
    expect(result).to eq "one two three four five"
  end
  it "Test 4. Check string with 7 words" do
    result = make_snippet("one two three four five six seven")
    expect(result).to eq "one two three four five..."
  end
  it "Test 5. Check string with 7 words" do
    result = make_snippet("one two three four five six seven")
    expect(result).to eq "one two three four five..."
  end
end
