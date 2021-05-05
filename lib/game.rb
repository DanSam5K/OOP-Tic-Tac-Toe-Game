require './player.rb'
class Game
  def initialize()
    @board = Player.new(9, " ")
  end
  WIN_COMBINATION = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]
  
  def display_board
    puts " #{@board[1]} | #{@board[2]} | #{@board[3]} "
    puts "------------"
    puts " #{@board[4]} | #{@board[5]} | #{@board[5]} "
    puts "------------"
    puts " #{@board[7]} | #{@board[8]} | #{@board[9]} "
  end

  def input_to_index(input)
    @choose = input.to_i
  end

  def move(input_to_index, player)
    @board[input_to_index] = player
  end

  def position_taken?(input_to_index)
    if @board[input_to_index] == "X"  || @board[input_to_index] == "O"
      true
    else
      false
    end
  end

  def valid_move?(input_to_index)
    !position_taken?(input_to_index) && @board[input_to_index]
  end

  def turn_count
    count = 0
    @board.each do |index|
      count += 1 if index == "X" || index == "O"
    end
    count
  end
end