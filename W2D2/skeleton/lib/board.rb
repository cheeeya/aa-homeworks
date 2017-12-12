class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1name = name1
    @player2name = name2
    @cups = Array.new(14)
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..13).each do |num|
      if num == 6 || num == 13
        @cups[num] = Array.new(0)
      else
        @cups[num] = Array.new(4) {:stone}
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    nummoves = @cups[start_pos]
    next_cup_idx = start_pos
    until nummoves.empty?
      if next_cup_idx == 13
        next_cup_idx = 0
      else
        next_cup_idx += 1
      end
      if current_player_name == @player1name && next_cup_idx == 13
        next_cup_idx = 0
      elsif current_player_name == @player2name && next_cup_idx == 6
        next_cup_idx += 1
      end
      @cups[next_cup_idx] << nummoves.pop
    end
    render
    next_turn(next_cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if  ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif (@cups[ending_cup_idx].count == 1)
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    p "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    p ""
    p ""
  end

  def one_side_empty?
    total_top, total_bottom = 0, 0
    (0..5).each do |idx|
      total_top += cups[idx].count
    end
    (7..12).each do |idx|
      total_bottom += cups[idx].count
    end
    (total_top == 0 || total_bottom == 0)
  end

  def winner
    if @cups[13].count > @cups[6].count
      @player2name
    elsif @cups[6].count > @cups[13].count
      @player1name
    else
      :draw
    end
  end
end
