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
end
