require 'secret_diary'

RSpec.describe 'secret diary unit tests' do
  it 'init base check' do
    fake_instant = double(:diary, read: "content")
    s_diary = SecretDiary.new(fake_instant)
    expect(s_diary.read).to eq "Go away!"
  end

  it 'unlock diary, should return content' do
    fake_instant = double(:diary, read: "content")
    s_diary = SecretDiary.new(fake_instant)
    s_diary.unlock
    expect(s_diary.read).to eq "content"
  end

  it 'lock diary after unlock, should return "Go away!"' do
    fake_instant = double(:diary, read: "content")
    s_diary = SecretDiary.new(fake_instant)
    s_diary.unlock
    s_diary.lock
    expect(s_diary.read).to eq "Go away!"
  end
end