class LRUCache

  def initialize(size)
    @cache = Array.new(size)
  end

  def count
  # returns number of elements currently in cache
    count = 0
    @cache.each do |el|
      count += 1 if el
    end
    count
  end

  def add(el)
  # adds element to cache according to LRU principle
    el_index = @cache.find_index(el)
    if el_index
      shift(el, el_index)
    else
      first_index = @cache.length - count - 1
      if full
        first_index = 0
      end
      shift(el, first_index)
    end
  end

  def show
  # shows the items in the cache, with the LRU item first
    p @cache.to_s
  end

private
# helper methods go here!
  def shift(new_first, index)
    i = index
    while i < @cache.length
      @cache[i] = @cache[i+1]
      i += 1
    end
    @cache[@cache.length - 1] = new_first
  end

  def full
    count == @cache.length
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
