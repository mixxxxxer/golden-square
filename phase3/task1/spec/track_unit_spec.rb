require 'track'

RSpec.describe "Track class unit tests" do
  it 'Test 1. Check matches? with title1' do
    track = Track.new('title1', 'artist1')
    expect(track.matches?('title1')).to eq true
  end
  it 'Test 2. Check matches? with title2' do
    track = Track.new('title1', 'artist1')
    expect(track.matches?('title2')).to eq false
  end
  it 'Test 3. Check matches? with artist1' do
    track = Track.new('title1', 'artist1')
    expect(track.matches?('artist1')).to eq true
  end
  it 'Test 4. Check matches? with artist2' do
    track = Track.new('title1', 'artist1')
    expect(track.matches?('artist2')).to eq false
  end
end