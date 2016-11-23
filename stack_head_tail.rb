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

  stack_head_tail = StackHeadTail.new
  
  Benchmark.benchmark do |x|
    x.report("1 million") do
      1_000_000.times do
        stack_head_tail.push("RoR")
      end
      10_000_000.times do
        stack_head_tail.pop
      end
    end
  end

  Benchmark.benchmark do |x|
    x.report("10 million") do
      10_000_000.times do
        stack_head_tail.push("RoR")
      end
      10_000_000.times do
        stack_head_tail.pop
      end
    end
  end
end
