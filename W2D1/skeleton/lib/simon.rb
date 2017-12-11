class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    while !game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    sleep(1)
    system ("clear")
    @sequence_length += 1
    require_sequence
    round_success_message unless game_over
  end

  def show_sequence
    add_random_color
    print "Sequence = "
    @seq.each do |color|
      print color + " "
    end
    puts ""
  end

  def require_sequence
    p "Input Sequence: "
    input = gets.chomp.split
    if input != @seq
    end
  end

  def add_random_color
      seq << COLORS.sample
  end

  def round_success_message
    p "Round Passed!"
  end

  def game_over_message
    p "Wrong Color GAME OVER"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
