require 'benchmark'
require 'pry'

class StackHeadTail

  def initialize
    @stack = []
  end

  def push(head)
    @stack = head, @stack
  end

  def pop
    head = @stack[0]
    @stack = @stack[1] || []
    return head
  end
end
