require 'pry'

class MyStack

  def initialize
   @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.delete_at(-1)
    return @stack
  end
end
