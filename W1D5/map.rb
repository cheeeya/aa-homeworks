class Map
  attr_reader :map_array

  def initialize
    @map_array = Array.new
  end

  def assign(key,value)
    @map_array.each do |pair|
      if pair[0].eql?(key)
        pair[1] = value
        return pair
      end
    end
    @map_array << [key,value]
    [key,value]
  end

  def remove(key)
    @map_array.reject! {|pair| pair[0] == key}
    nil
  end

  def lookup(key)
    @map_array.each do |pair|
      return pair[1] if pair[0].eql?(key)
    end
    nil
  end

  def show
    @map_array
  end

end





# map = Map.new
# p map.assign(1,2)
# p map.show
# p map.assign(3,2)
# p map.show
# p map.assign(1,3)
# p map.show
# p map.remove(3)
# p map.show
# p map.lookup(1)
