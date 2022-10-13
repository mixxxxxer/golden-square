require 'count_words'

RSpec.describe "counter_word method tests" do
  context "use method with empty string" do
    it "should return 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end
  context "use method with string 'ab ac'" do
    it "should return 2" do
      result = count_words("ab ac")
      expect(result).to eq 2
    end
  end
  context "use method with string 'ab ac ab ac'" do
    it "should return 4" do
      result = count_words("ab ac ab ac")
      expect(result).to eq 4
    end
  end
end