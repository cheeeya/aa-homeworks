class map
  attr_reader :map_array

  def initialize
    @map_array = Array.new
  end

  def assign(key,value)
    @map_array.each do |pair|
      pair[1] = value if pair[0].eqls(key)
      return pair
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
      return pair[1] if pair[0].eqls?(key)
    end
    nil
  end

  def show
    @map_array
  end

end
