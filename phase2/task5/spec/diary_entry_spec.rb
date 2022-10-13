require 'diary_entry'

RSpec.describe 'DiaryEntry class tests' do
  context 'check initialize title' do
    it 'should return empty title' do
      example = DiaryEntry.new('', '')
      result = example.title
      expect(result).to eq ''
    end
    it 'should return empty contents' do
      example = DiaryEntry.new('', '')
      result = example.contents
      expect(result).to eq ''
    end
  end

  context 'check title and contents with arguments' do
    it "should return title 'title'" do
      example = DiaryEntry.new('title', '')
      result = example.title
      expect(result).to eq 'title'
    end
    it "should return content 'contents'" do
      example = DiaryEntry.new('', 'contents')
      expect(example.contents).to eq 'contents'
    end
    it "should return content 'contents' and title 'title'" do
      example = DiaryEntry.new('title', 'contents')
      expect([example.title, example.contents]).to eq %w[title contents]
    end
  end

  context 'checking word counts' do
    it 'checking 2 words' do
      example = DiaryEntry.new('', 'contents, more contents, contentsagain')
      result = example.count_words
      expect(result).to eq 4
    end
  end

  context 'reading time checks' do
    it 'checking 2 words' do
      example = DiaryEntry.new('', 'contents, more contents, contentsagain')
      result = example.reading_time(2)
      expect(result).to eq 2
    end

    it 'checking many words' do
      example = DiaryEntry.new('', 'contents ' * 5000)
      result = example.reading_time(100)
      expect(result).to eq 50
    end

    it 'checking many words' do
      example = DiaryEntry.new('', 'contents ' * 100)
      result = example.reading_time(3)
      expect(result).to eq 34
    end
  end

  context 'reading_chunk tests' do
    it 'first 10 words' do
      example = DiaryEntry.new('', (1..100).to_a.join(' '))
      result = example.reading_chunk(10, 1)
      expect(result).to eq '1 2 3 4 5 6 7 8 9 10'
    end

    it '2nd 4 words' do
      example = DiaryEntry.new('', (1..100).to_a.join(' '))
      example.reading_chunk(10, 1)
      result = example.reading_chunk(2, 2)
      expect(result).to eq '11 12 13 14'
    end

    it '3rd 2 words' do
      example = DiaryEntry.new('', (1..100).to_a.join(' '))
      example.reading_chunk(10, 1)
      example.reading_chunk(2, 2)
      result = example.reading_chunk(4, 1)
      expect(result).to eq '15 16 17 18'
    end

    it 'last 2 words' do
      example = DiaryEntry.new('', (1..100).to_a.join(' '))
      example.reading_chunk(10, 1)
      example.reading_chunk(2, 2)
      example.reading_chunk(4, 1)
      result = example.reading_chunk(4, 1)
      expect(result).to eq '19 20 21 22'
    end

    it 'then read all words and want start again' do
      example = DiaryEntry.new('', (1..100).to_a.join(' '))
      example.reading_chunk(10, 10)
      result = example.reading_chunk(4, 1)
      expect(result).to eq '1 2 3 4'
    end
  end
end
