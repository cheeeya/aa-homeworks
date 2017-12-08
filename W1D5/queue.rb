class Queue
  attr_reader :queue_array;
  def initialize
    @queue_array = Array.new
  end

  def enqueue(el)
    @queue_array << el
    el
  end

  def dequeue
    @queue_array.shift
  end

  def show
    @queue_array
  end
end



# q = Queue.new
# p q.enqueue(1)
# p q.show
# p q.enqueue(2)
# p q.show
# p q.dequeue
# p q.show
# p q.enqueue(3)
# p q.show
# p q.dequeue
# p q.show
