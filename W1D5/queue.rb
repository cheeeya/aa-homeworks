class Queue
  attr_reader :queue_array;
  def initialize
    @queue_array = Array.new
  end

  def enqueue(el)
    @queue_array << el
  end

  def dequeue
    @queue_array.shift
  end

  def show
    @queue_array
  end
end
