require 'benchmark'
require 'pry'

class MyStack

  def initialize
    @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.last
    @stack.delete_at(-1)
  end

  my_stack = MyStack.new

  arr = Array.new

  Benchmark.benchmark do |x|
    x.report("1 million") do
      1_000_000.times do
        my_stack.push("RoR")
      end
      10_000_000.times do
        my_stack.pop
      end
    end
  end

  Benchmark.benchmark do |x|
    x.report("1 million index") do
      1_000_000.times do |index|
        arr[index] = "RoR"
      end
      1_000_000.times do
        my_stack.pop
      end
    end
  end

  Benchmark.benchmark do |x|
    x.report("10 million") do
      10_000_000.times do
        my_stack.push("RoR")
      end
      10_000_000.times do
        my_stack.pop
      end
    end
  end

  Benchmark.benchmark do |x|
    x.report("10 million index") do
      10_000_000.times do |index|
        arr[index] = "RoR"
      end
      10_000_000.times do
        my_stack.pop
      end
    end
  end
end
