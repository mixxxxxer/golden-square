require 'task_formatter'

RSpec.describe 'TaskFormatter unit tests' do
  it 'base init check' do
    fake_instant = double(:task, title: "title", complete?: false)
    task_form = TaskFormatter.new(fake_instant)
    expect(task_form.format).to eq("[ ] title")
  end

  it 'return [x] title then task complete' do
    fake_instant = double(:task, title: "title", complete?: true)
    task_form = TaskFormatter.new(fake_instant)
    expect(task_form.format).to eq("[x] title")
  end
end