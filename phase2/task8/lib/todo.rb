# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    @task = task
    @mark = false
  end

  def task
    # Returns the task as a string
    @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @mark = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @mark
  end
end
