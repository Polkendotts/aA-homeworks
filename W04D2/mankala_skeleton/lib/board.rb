class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13 
      4.times do 
        cup << :stone
      end 
    end 
  end

  def valid_move?(start_pos)
    raise ArgumentError.new "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise ArgumentError.new "Starting cup is empty" if cups[start_pos].count == 0

  end

  def make_move(start_pos, current_player_name)
   pos = start_pos + 1

    until cups[start_pos].empty? do 
      next if current_player_name == @player1 && pos == 13
      next if current_player_name == @player2 && pos == 6
      cups[pos] << :stone
      cups[start_pos].pop
      pos += 1
    end 

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
