# 1. Describe the Problem
# Keep track of todo tasks in a list,
# Mark tasks that are completed and remove them from the list 

# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class ToDo
  def initialize 
    @list = [] # array of tasks
  end

  def add_task(task)
    @list << task 
    # task is a string
    # No return value
  end

  def print_list()
    result = ""
    @list.each.with_index do |task, index|
    result += "#{index + 1}. #{task}\n"
    end
    return result
    #print_list print user tasks on the screen
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end

  def delete_task(task) # number of task, integer
    if task.class == String 
      @list.delete_at(@list.index(task)) if @list.include?(task)
    else
      @list.delete_at(task - 1) if (0...@list.size).to_a.include?(task - 1) # if (task - 1 >= 0 && task - 1 < @list.aize)
    end
  end
end 


# 3. Create Examples as Tests
# Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
#  task_list = ToDo.new
#  task_list.print_list # => ""

# 2
#  task_list = ToDo.new
#  task_list.add_task("task1")
#  task_list.print_list # => "1. task1"

# 3
#task_list = ToDo.new
#task_list.add_task("task1")
#task_list.add_task("task2")
#ask_list.add_task("task3")
#task_list.print_list # => "1. task1\n2. task2\n3. task3"

# 4
#task_list = ToDo.new
#task_list.add_task("task1")
#task_list.delete_task(1)
#task_list.print_list # => ""

# 5
#task_list = ToDo.new
#task_list.add_task("task1")
#task_list.add_task("task2")
#task_list.delete_task(2)
#task_list.print_list # => "1. task1"

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

