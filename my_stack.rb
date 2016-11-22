require 'pry'

class MyStack

  def initialize
   @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack[-1]
  end
end

  my_stack = MyStack.new
  my_stack.push('qwer')
  my_stack.push(100)
  my_stack.push(:symbol)
  my_stack.pop()
