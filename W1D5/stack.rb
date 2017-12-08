class Stack
  attr_reader :stack_array

  def initialize
    @stack_array = Array.new
  end

  def add(el)
    @stack_array << el
    el
  end

  def remove
    @stack_array.pop
  end

  def show
    @stack_array
  end
end



# s = Stack.new
# p s.add(1)
# p s.show
# p s.add(2)
# p s.show
# p s.remove
# p s.show
# p s.add(3)
# p s.show
# p s.remove
# p s.show
