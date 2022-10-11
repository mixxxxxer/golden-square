require 'counter'

RSpec.describe "Class Counter tests" do
  it "Test 1. Check default value" do
    counter_inst = Counter.new
    result = counter_inst.report
    expect(result).to eq "Counted to 0 so far."
  end
  it "Test 2. Check method add(10)" do
    counter_inst = Counter.new
    counter_inst.add(10)
    result = counter_inst.report
    expect(result).to eq "Counted to 10 so far."
  end
  it "Test 3. Check method add(10) + add(100)" do
    counter_inst = Counter.new
    counter_inst.add(10)
    counter_inst.add(100)
    result = counter_inst.report
    expect(result).to eq "Counted to 110 so far."
  end
end
