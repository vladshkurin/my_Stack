require 'pry'
require './stack_head_tail'

describe StackHeadTail do
  let(:stack_head_tail) { StackHeadTail.new }

  describe "#push & #pop" do
    it 'push should be add in head stack but pop should pull first element' do
      stack_head_tail.push 'RoR'
      stack_head_tail.push :symbol
      stack_head_tail.push hash: 'hash'
      stack_head_tail.push (1234)
      expect(stack_head_tail.pop).to eq (1234)
      expect(stack_head_tail.pop).to eq hash: 'hash'
      expect(stack_head_tail.pop).to eq :symbol
      expect(stack_head_tail.pop).to eq 'RoR'
    end
  end
end
