require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "return all tasks" do
    task_list = TaskList.new
    task1 = double :task_instant
    task2 = double :task_instant
    task3 = double :task_instant
    task_list.add(task1)
    task_list.add(task2)
    task_list.add(task3)
    expect(task_list.all).to eq [task1, task2, task3]
  end

  it "return true if all tasks complete" do
    task_list = TaskList.new
    task1 = double :task_instant, complete?:true
    task2 = double :task_instant, complete?:true
    task3 = double :task_instant, complete?:true
    task_list.add(task1)
    task_list.add(task2)
    task_list.add(task3)
    expect(task_list.all_complete?).to eq true
  end

  it "return false if one task not complete" do
    task_list = TaskList.new
    task1 = double :task_instant, complete?:true
    task2 = double :task_instant, complete?:false
    task3 = double :task_instant, complete?:true
    task_list.add(task1)
    task_list.add(task2)
    task_list.add(task3)
    expect(task_list.all_complete?).to eq false
  end
  # Unit test `#all` and `#all_complete?` behaviour
end
