require 'pry'
require './my_stack'

describe MyStack do
  let(:stack) { MyStack.new }

  describe "#push & #pop" do
    it 'push should be add in tail stack but pop should pull last index' do
      stack.push 'Ruby'
      stack.push 'on'
      stack.push 'Rails'
      expect(stack.pop).to eq 'Rails'
      expect(stack.pop).to eq 'on'
      expect(stack.pop).to eq 'Ruby'
    end
  end
end
