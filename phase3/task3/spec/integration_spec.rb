require 'secret_diary'
require 'diary'

RSpec.describe 'secret diary integration tests' do
  it 'init base check' do
    diary = ("content")
    s_diary = SecretDiary.new(diary)
    expect(s_diary.read).to eq "Go away!"
  end

  it 'unlock diary, should return content' do
    diary = Diary.new("content")
    s_diary = SecretDiary.new(diary)
    s_diary.unlock
    expect(s_diary.read).to eq "content"
  end

  it 'lock diary after unlock, should return "Go away!"' do
    diary = Diary.new("content")
    s_diary = SecretDiary.new(diary)
    s_diary.unlock
    s_diary.lock
    expect(s_diary.read).to eq "Go away!"
  end
end