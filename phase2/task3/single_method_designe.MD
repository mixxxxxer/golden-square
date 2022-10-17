# Single Method Design

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
#method should return t/f if text include #TODO string
def todo_check? (text)
#todo_check? => true/false
#text : string this text

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
todo_check?("") 
# => false

#2
todo_check?("name") 
# => false

#3
todo_check?("name " * 100) 
# => false

#4
todo_check?("#TODO") 
# => true

#5
todo_check?("text text #TODO text text") 
# => true

#6
todo_check?("text text #TODo text text") 
# => false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
