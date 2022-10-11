require 'gratitudes'

RSpec.describe "Gratitudes class tests:" do
  it "Test 1. Check init data. Should return 'Be grateful for: '" do
    grat = Gratitudes.new
    result = grat.format
    expect(result).to eq "Be grateful for: "
  end
  it "Test 2. Check add('example'). Should return 'Be grateful for: example'" do
    grat = Gratitudes.new
    grat.add("example")
    result = grat.format
    expect(result).to eq "Be grateful for: example"
  end
  it "Test 2. Check 10 times add('example'). Should return 'Be grateful for: example...(10 times)'" do
    grat = Gratitudes.new
    10.times{grat.add("example")}
    result = grat.format
    expect(result).to eq "Be grateful for: example, example, example, example, example, example, example, example, example, example"
  end
end
