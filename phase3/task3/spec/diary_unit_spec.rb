require 'diary'

RSpec.describe 'diary unit tests' do
  it 'init check' do
    diary = Diary.new('content')
    expect(diary.read).to eq 'content'
  end
  it 'empty arg' do
    diary = Diary.new('')
    expect(diary.read).to eq ''
  end
end