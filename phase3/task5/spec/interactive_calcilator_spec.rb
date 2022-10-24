require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it 'fake_io' do
    fake_io = double :Kernel
    expect(fake_io).to receive(:puts).with('Please enter a number')
    expect(fake_io).to receive(:gets).and_return('4')
    expect(fake_io).to receive(:puts).with('Please enter another number')
    expect(fake_io).to receive(:gets).and_return('3')
    expect(fake_io).to receive(:puts).with('Here is your result:')
    expect(fake_io).to receive(:puts).with('4 - 3 = 1')
    interactive_calculator = InteractiveCalculator.new(fake_io)
    interactive_calculator.run
  end
end