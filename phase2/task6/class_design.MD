# Class Design

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
class MusicList (list_name)
  @list_name
  #list_name = name of music list , String
  @music_list = []
  #music_list - array of artists + song name

  def add_item (song)
  # add_item - method to add new song to music list
  # song - new song, String

  def print_list 
  # => list of songs multiline String

  def show_listname
  # => @list_name
end

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
new_list = MusicList.new("New list")
new_list.show_listname # => "New list"

# 2
new_list = MusicList.new("New list")
new_list.print_list #=> ""

# 3
new_list = MusicList.new("New list")
new_list.add_item("")
new_list.print_list #=> ""

# 4
new_list = MusicList.new("New list")
new_list.add_item("song1")
new_list.print_list #=> "song1"

# 5
new_list = MusicList.new("New list")
new_list.add_item("song1")
new_list.add_item("song2")
new_list.print_list #=> "song1, song2"

# 6
new_list = MusicList.new("New list")
new_list.add_item("song1")
new_list.add_item("song2")
new_list.add_item("song3")
new_list.print_list #=> "song1, song2, song3"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
