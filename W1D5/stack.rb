class Stack
  attr_reader :stack_array

  def initialize
    @stack_array = Array.new
  end

  def add(el)
    @stack_array << el
  end

  def remove
    @stack_array.pop
  end

  def show
    @stack_array
  end
end
