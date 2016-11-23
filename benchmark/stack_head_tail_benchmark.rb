require 'benchmark'
require './stack_head_tail'

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
