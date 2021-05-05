require './lib/player.rb'
class Game
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end
  WIN_COMBINATION_TEMP = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]
  WIN_COMBINATION = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

  
  def display_board
    d_board= " #{@board[0]} | #{@board[1]} | #{@board[2]} \n"+
     "------------\n"+
     " #{@board[3]} | #{@board[4]} | #{@board[5]} \n"+
     "------------\n"+
     " #{@board[6]} | #{@board[7]} | #{@board[8]} \n"
  end

  def input_to_index(input)
    @choose = input.to_i-1
  end

  def move(input_to_index, player_sign)
    @board[input_to_index] = player_sign #"x""o"
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

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn
    puts"Whats your choice user?"
    choice = gets.strip
    index = input_to_index(choice)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
end
