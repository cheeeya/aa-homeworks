#O(n^2)
def sluggish_octopus(fish_array)
  longest_fish = ""
  fish_array.each do |fish|
    fish_array.each do |fish2|
      if fish.length > fish2.length
        longest_fish = fish
      else
        longest_fish = fish2
      end
    end
  end
  longest_fish
end

#O(n log n)
def dominant_octopus(fish_array)
  mergesort(fish_array)[-1]
end

#O(n)
def clever_octopus(fish_array)
  longest_fish = fish_array.first
  fish_array[1..-1].each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

#O(n)
def slow_dance(direction, direction_array)
  direction_array.each_with_index do |dir, idx|
    return idx if dir == direction
  end
end

#O(1)
def fast_dance(direction, direction_hash)
  direction_hash[direction]
end

#helper methods
def mergesort(array)
  return [] if array.empty?
  return array if array.count == 1
  mid_index = array.length / 2
  left_sorted = mergesort(array[0...mid_index])
  right_sorted = mergesort(array[mid_index..-1])

  merge(left_sorted, right_sorted)

end

def merge(left, right)
  merged = []
  case left.first.length <=> right.first.length
  when -1
    merged << left.shift
  when 0
    merged << left.shift
  when 1
    merged << right.shift
  end
  merged += left + right
end

tiles_array = %w(up right-up right right-down down left-down left left-up)
tiles_hash = { "up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3,
  "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7 }

array_of_fish =
  %w(fish fiiish fiiiiish fiiiish fffish ffiiiiisshh fsh fiiiissshhhhhh)

puts "Sluggish octopus " + sluggish_octopus(array_of_fish)
puts "Dominant octopus " + dominant_octopus(array_of_fish)
puts "Clever octopus " + clever_octopus(array_of_fish)
puts ""
puts "Slow dance " + slow_dance("up", tiles_array).to_s
puts "Fast dance " + fast_dance("up", tiles_hash).to_s
