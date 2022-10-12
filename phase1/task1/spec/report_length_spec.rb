require 'report_length'

RSpec.describe "report_length method" do
  it "Test 1. return Str(example) expect 7 to use Str" do
    result = report_length("example")
    expect(result).to eq "This string was 7 characters long."
  end
  it "Test 2. return Str(123) expect 3 to use Str" do
    result = report_length("123")
    expect(result).to eq "This string was 3 characters long."
  end
  it "Test 3. return Str(123_456) expect 7 to use Str" do
    result = report_length("123_456")
    expect(result).to eq "This string was 7 characters long."
  end
  it "Test 4. return Int(123) expect 3 to use Str" do
    result = report_length(123)
    expect(result).to eq "This string was 3 characters long."
  end
end