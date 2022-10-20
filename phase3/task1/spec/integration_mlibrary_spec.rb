require 'music_library'
require 'track'

RSpec.describe "MusicLibrary class unit test" do
  it 'Test 1. Check empty library' do
    library = MusicLibrary.new
    expect(library.all).to eq []
  end
  it 'Test 2. Check library with 1 track' do
    library = MusicLibrary.new
    track = Track.new('artist1', 'title1')
    library.add(track)
    expect(library.all).to eq [track]
  end
  it 'Test 3. Check library with 3 track' do
    library = MusicLibrary.new
    track1 = Track.new('artist1', 'title1')
    track2 = Track.new('artist2', 'title2')
    track3 = Track.new('artist3', 'title3')
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.all).to eq [track1, track2, track3]
  end
  it 'Test 4. Find track for keyword artist name' do
    library = MusicLibrary.new
    track1 = Track.new('artist1', 'title1')
    track2 = Track.new('artist2', 'title2')
    track3 = Track.new('artist3', 'title3')
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.search("artist1")).to eq [track1]
  end
  it 'Test 5. Find track for keyword track title' do
    library = MusicLibrary.new
    track1 = Track.new('artist1', 'title1')
    track2 = Track.new('artist2', 'title2')
    track3 = Track.new('artist2', 'title3')
    library.add(track1)
    library.add(track2)
    library.add(track3)
    expect(library.search("artist2")).to eq [track2, track3]
  end
end