# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

There are 2 classes with which you can maintain a to-do list. You can create a new task, add it to the to-do list, view the entire list of tasks and their status

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# Class TodoList
# `TodoList` include list of Todo's instance 
TodoList.add(todo)
  # todo is an instance of Todo
  # Returns nothing
  
TodoList.incomplete 
  # Returns all non-done todos

TodoList.complete 
  # Returns all complete todos

TodoList.give_up!
  # Marks all todos as complete

# Class Todo
  Todo.new(task) 
    # task is a string

  Todo.task
    # Returns the task as a string

  Todo.mark_done!
    # Marks the todo as done
    # Returns nothing

  Todo.done?
    # Returns true if the task is done
    # Otherwise, false


```

## 3. Create Examples as Tests

```ruby
# 1
todo = Todo.new('task1')
todo.task #=> 'task1

# 2
todo = Todo.new('task1')
todo.done? #=> false

# 3
todo = Todo.new('task1')
todo.mark_done!
todo.done? #=> true
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
