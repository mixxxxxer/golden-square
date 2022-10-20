require 'music_library'

RSpec.describe "MusicLibrary class unit test" do
  it 'Test 1. Check empty library' do
    library = MusicLibrary.new
    expect(library.all).to eq []
  end
  it 'Test 2. Check library with 1 track' do
    library = MusicLibrary.new
    track = double :track_instant
    library.add(track)
    expect(library.all).to eq [track]
  end
  it 'Test 3. Check library with 3 track' do
    library = MusicLibrary.new
    track1 = double :track_instant
    track2 = double :track_instant
    track3 = double :track_instant
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.all).to eq [track1, track2, track3]
  end
  it 'Test 4. Find track for keyword artist name' do
    library = MusicLibrary.new
    track1 = double :track_instant, matches?: true
    track2 = double :track_instant, matches?: false
    track3 = double :track_instant, matches?: false
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.search("artist1")).to eq [track1]
  end
  it 'Test 5. Find track for keyword track title' do
    library = MusicLibrary.new
    track1 = double :track_instant, matches?: false
    track2 = double :track_instant, matches?: true
    track3 = double :track_instant, matches?: true
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.search("artist1")).to eq [track2, track3]
  end
end