require 'pry'
require './my_stack'

describe MyStack do
  let(:stack) { MyStack.new }

  describe "#push & #pop" do
    it 'push should be add in tail stack but pop should pull last index' do
      stack.push 'Ruby'
      stack.push 'on'
      stack.push 'Rails'
      expect(stack.instance_variable_get(:@stack).last).to eq 'Rails'
      stack.pop
      expect(stack.instance_variable_get(:@stack).last).to eq 'on'
      stack.pop
      expect(stack.instance_variable_get(:@stack).last).to eq 'Ruby'
    end
  end
end
