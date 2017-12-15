class LRUCache

  def initialize(size)
    @size = size
    @cache = []
  end

  def count
  # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
  # adds element to cache according to LRU principle
    el_index = @cache.find_index(el)
    if el_index
      @cache.delete_at(el_index)
      @cache << el
    else
      if full
        @cache.shift
      end
      @cache << el
    end
  end

  def show
  # shows the items in the cache, with the LRU item first
    p @cache
  end

private
# helper methods go here!
  def full
    count == @size
  end
end

johnny_cache = LRUCache.new(4)
johnny_cache.add("I walk the line")
p "add I walk the line"
johnny_cache.show
  p ""
  johnny_cache.add(5)
  p "add 5"
  johnny_cache.show
  p ""

  johnny_cache.add([1,2,3])
  p "add " + [1,2,3].to_s
  johnny_cache.show
  p ""
  johnny_cache.add(5)
  p "add 5"
  johnny_cache.show
  p ""
  johnny_cache.add(-5)
  p "add -5"
  johnny_cache.show
  p ""
  johnny_cache.add({a: 1, b: 2, c: 3})
  p "add hash"
  johnny_cache.show
  p ""
  johnny_cache.add([1,2,3,4])
  p "add [1,2,3,4]"
  johnny_cache.show
  p ""
  johnny_cache.add("I walk the line")
  p "add I walk the line"
  johnny_cache.show
  p ""
  johnny_cache.add(:ring_of_fire)
  p "add ring of fire"
  johnny_cache.show
  p ""
  johnny_cache.add("I walk the line")
  p "add I walk the line"
  johnny_cache.show
  p ""
  johnny_cache.add({a: 1, b: 2, c: 3})
  p "add hash"

  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
