
# Multi-Class Design 

## 1. Describe the Problem

<!-- As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries -->

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
./multiclass.html
```

_Also design the interface of each class in more detail._

```ruby
class Diary
# Diary - main class. Collect all diary_entries and include Todo_list object
  def initialize(todo_list = nil)
    @diary_entries = [] # array of DiaryEntrie obj.
    @todo_list = todo_list  # if user already have ToDo list, 
                            # we can init Diary with ToDo instant
  end

  def add_diary(diary_entrie)
    # take DiaryEntrie instant as new diary element and add to Diary
  end

  def add_todo_list(todo_list)
    # take TodoList instant as new TodoList if ToDo list empty
  end

  def show_diary_list
    # return list of diary
    # => [*DiaryEntrie obj.]
  end

  def show_readable(time, wpm)
    # time - how many minutes user have to reading
    # wpm - speed of reading, words per minute
  end

  def show_numbers
    # return list of numbers in all diary
    # => [*Strings]
  end
end

class DiaryEntrie
# DiaryEntrie class realize info about one entrie
  def initialize (title, content, date = today_date)
  # title - title of entrie
  # content - content of diary entrie
  # date - optional argument, if user want use another date
    # in default use actual date in format "dd.mm.yyyy"
    @title = title
    @content = content
    @date = date
  end

  def get_content
    # basic getter of content
    # => String
  end

  def get_title
    # basic getter of title
    # => String
  end

  def count_words
    # calculate count of words in content
    # => Int
  end

  def get_date
    # => date of add entrie, String in format "dd.mm.yyyy"
  end
end

class TodoList
# include info about all ToDo tasks and can return list of tasks
  def initialize (title)
  # title - title of ToDo list
    @title = title
    @todo_entries = []
    #todo_entries - array of <TodoEntrie>
  end

  def show_todo_list
    # get list of all tasks 
    # => [<TodoEntrie>]
  end

  def show_day_todo_list(date)
    # get list of all tasks in day
    # date = String date in format "dd.mm.yyyy"
    #  => [<TodoEntrie>]
  end
end

class TodoEntrie
# include info about task
  def initialize (title, date = today_date)
    # title - title of task, String
    # date - optional argument, if user want use another date
    # in default use actual date in format "dd.mm.yyyy"
    @title = title
    @date = date
    @status = false #this task not completed
  end

  def get_title
    # => title of task, String
  end

  def completed?
    #return task status, true or false
  end

  def complete!
    # set status to true
  end

  def get_date
    # => date of add task, String in format "dd.mm.yyyy"
  end
end

```
## 3. Create Examples as Integration Tests
_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._
```ruby
# EXAMPLE
# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
  # class TodoEntrie tests
  #1
  context 'class TodoEntrie tests' do
    it 'Test 1. Should return "" if title empty' do
      todo = TodoEntrie.new("")
      expect(todo.get_title).to eq ("")
    end
    it 'Test 2. Should return "title1" if title eq "title1' do
      todo = TodoEntrie.new("title1")
      expect(todo.get_title).to eq ("title1")
    end
    it 'Test 3. Should return actual date if date arg not used' do
      todo = TodoEntrie.new("title1")
      expect(todo.get_date).to eq (Data.today.strftime("%d.%m.%Y"))
    end
    it 'Test 4. Should return date "01.01.2000" if date "01.01.2000' do
      todo = TodoEntrie.new("title1", "01.01.2000")
      expect(todo.get_date).to eq ("01.01.2000")
    end
  end
  # class DiaryEntrie tests
  #2
  context 'class DiaryEntrie tests' do
    it 'Test 1. Should return "title1" if title = "title1' do
      diary = DiaryEntrie.new("title1", "content")
      expect(diary.get_title).to eq ("title1")
    end
    it 'Test 2. Should return "content0"' do
      diary = DiaryEntrie.new("title1", "a b c d e f")
      expect(diary.get_content).to eq ("a b c d e f")
    end
    it 'Test 2. Should return actual date' do
      diary = DiaryEntrie.new("title1", "a b c d e f")
      expect(diary.get_date).to eq (Data.today.strftime("%d.%m.%Y"))
    end
  end
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
