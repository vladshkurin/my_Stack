require 'benchmark'
require './my_stack'

my_stack = MyStack.new

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
  x.report("10 million") do
    10_000_000.times do
      my_stack.push("RoR")
    end
    10_000_000.times do
      my_stack.pop
    end
  end
end
