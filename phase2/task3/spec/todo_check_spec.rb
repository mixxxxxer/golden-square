require 'todo_check'

RSpec.describe 'Todo_check method tests' do
  context 'check #TODO in the text' do
    it 'Test 1. Empty text should return false' do
      expect(todo_check?('')).to eq false
    end

    it 'Test 2. Text without #TODO should return false' do
      expect(todo_check?('name')).to eq false
    end

    it 'Test 3. Long text without #TODO should return false' do
      expect(todo_check?("name " * 100)).to eq false
    end

    it 'Test 4. Long text without #TODO should return true' do
      expect(todo_check?("#TODO")).to eq true
    end
    
    it 'Test 5. Text with #TODO should return true' do
      expect(todo_check?("text text #TODO text text") ).to eq true
    end

    it 'Test 6. Text with #TODo should return true' do
      expect(todo_check?("text text #TODo text text") ).to eq true
    end
  end
end