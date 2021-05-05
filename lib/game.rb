require './lib/player.rb'
class Game
  attr_accessor :player_1, :player_2
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @player_1=Player.new("","X")
    @player_2=Player.new("","O")

  end
  WIN_COMBINATION_TEMP = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]

  
 def choices (val) 
  @board.each_with_index do |val,index|
    if val == "X" 
      if player_1.selections.all? {|x| x!=index}
     player_1.choice(index)
    end
    elsif val=="O"
      if player_2.selections.all? {|x| x!=index}
     player_2.choice(index)
    end
    end
   end
  end

  def win?
    win_combo = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
       win_combo.each do |arr|
        win_array_1=[]
        win_array_2=[]
        arr.each do |i|
          unless player_1.selections==nil
            player_1.selections.each do |choice|
              if i==choice
              win_array_1.push(i)
              end
            end
          end
          unless player_2.selections==nil
            player_2.selections.each do |choice|
              if i==choice
              win_array_2.push(i)
              end
            end
          end
          end
        if win_array_1.length==3 || win_array_2.length==3
          return true  
        end
       end
       false
    end

    def tie?
    turn_count>8 && !win?
    end
  
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
  return true if !position_taken?(input_to_index) && @board[input_to_index] && input_to_index>=0
  end

  def turn_count
    count = 0
    @board.each do |index|
      count += 1 if index == "X" || index == "O"
    end
    count
  end

  def current_player
    turn_count % 2 == 0 ? player_1.name : player_2.name
  end

  def other_player
    turn_count % 2 == 1 ? player_1.name : player_2.name
  end

  def current_player_sign
    turn_count % 2 == 0 ? player_1.sign : player_2.sign
  end

  def turn(index)
      move(index, current_player_sign)
      display_board
  end
end

