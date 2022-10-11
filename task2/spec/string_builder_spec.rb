require 'string_builder'

RSpec.describe "StringBuilder tests:" do
  it "Test 1. Check init data. Should return empty string" do
    str = StringBuilder.new
    result = str.output
    expect(result).to eq ""
  end
  it "Test 2. Check init length. Should return 0" do
    str = StringBuilder.new
    result = str.size
    expect(result).to eq 0
  end
  it "Test 3. Add('example'). Should return str and length ['example', 7]" do
    str = StringBuilder.new
    str.add("example")
    len = str.size
    newline = str.output
    expect([newline, len]).to eq ['example', 7]
  end
  it "Test 4. Add('example') and add('2'). Should return str and length ['example2', 8]" do
    str = StringBuilder.new
    str.add("example")
    str.add("2")
    len = str.size
    newline = str.output
    expect([newline, len]).to eq ['example2', 8]
  end
end
