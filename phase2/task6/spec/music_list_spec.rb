require 'music_list'

RSpec.describe 'MusicList class tests' do
  it 'Test 1. Show list name' do
    new_list = MusicList.new('New list')
    expect(new_list.show_listname).to eq "New list"
  end

  it 'Test 2. Show empty list' do
    new_list = MusicList.new("New list")
    expect(new_list.print_list).to eq ""
  end

  it 'Test 3. Show empty list' do
    new_list = MusicList.new("New list")
    new_list.add_item("")
    expect(new_list.print_list).to eq ""
  end

  it 'Test 4. Return list with 1 song' do
    new_list = MusicList.new("New list")
    new_list.add_item("song1")
    expect(new_list.print_list).to eq "song1"
  end

  it 'Test 5. Return list with 2 song' do
    new_list = MusicList.new("New list")
    new_list.add_item("song1")
    new_list.add_item("song2")
    expect(new_list.print_list).to eq "song1, song2"
  end

  it 'Test 6. Return list with 3 song' do
    new_list = MusicList.new("New list")
    new_list.add_item("song1")
    new_list.add_item("song2")
    new_list.add_item("song3")
    expect(new_list.print_list).to eq "song1, song2, song3"
  end

  it 'Test 6. Return list with 2 song without duplicate' do
    new_list = MusicList.new("New list")
    new_list.add_item("song1")
    new_list.add_item("song2")
    new_list.add_item("song1")
    expect(new_list.print_list).to eq "song1, song2"
  end
end