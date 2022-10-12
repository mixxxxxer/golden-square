require 'present'

RSpec.describe "Present class Tests:" do
  it "Test 1. Find unwrap error if content not wrapped" do
    pres = Present.new
    expect {pres.unwrap}.to raise_error "No contents have been wrapped."
  end
  it "Test 2. Find wrap error if content wrapped" do
    pres = Present.new
    pres.wrap("box")
    expect {pres.wrap("box")}.to raise_error "A contents has already been wrapped."
  end
  it "Test 3. Try wrap and unwrap content" do
    pres = Present.new
    pres.wrap("box")
    expect(pres.unwrap).to eq "box"
  end
  it "Test 4. Try wrap without argument" do
    pres = Present.new
    expect {pres.wrap}.to raise_error ArgumentError
  end
end
