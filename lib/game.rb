require_relative '../lib/player'
class Game
  attr_accessor :player1, :player2

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1 = Player.new('', 'X')
    @player2 = Player.new('', 'O')
  end
  WIN_COMBINATION_TEMP = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]].freeze
  # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
  def choices
    @board.each_with_index do |val, index|
      case val
      when 'X'
        player1.choice(index) if player1.selections.all? { |x| x != index }
      when 'O'
        player2.choice(index) if player2.selections.all? { |x| x != index }
      end
    end
  end

  def win?
    win_combo = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    win_combo.each do |arr|
      win_array1 = []
      win_array2 = []
      arr.each do |i|
        player1.selections&.each do |choice|
          win_array1.push(i) if i == choice
        end
        next if player2.selections.nil?

        player2.selections.each do |choice|
          win_array2.push(i) if i == choice
        end
      end
      return true if win_array1.length == 3 || win_array2.length == 3
    end
    false
  end

  # rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
  def contains_letter(name)
    name =~ /[a-z]/
  end

  def tie?
    turn_count > 8 && !win?
  end

  def display_board
    " #{@board[0]} | #{@board[1]} | #{@board[2]} \n" \
    "------------\n" \
    " #{@board[3]} | #{@board[4]} | #{@board[5]} \n" \
    "------------\n" \
    " #{@board[6]} | #{@board[7]} | #{@board[8]} \n"
  end

  def input_to_index(input)
    @choose = input.to_i - 1
  end

  def move(input_to_index, player_sign)
    @board[input_to_index] = player_sign
  end

  def position_taken?(input_to_index)
    @board[input_to_index] == 'X' || @board[input_to_index] == 'O'
  end

  def valid_move?(input_to_index)
    !position_taken?(input_to_index) && @board[input_to_index] && input_to_index >= 0
  end

  def turn_count
    count = 0
    @board.each do |index|
      count += 1 if %w[X O].include?(index)
    end
    count
  end

  def current_player
    turn_count.even? ? player1.name : player2.name
  end

  def other_player
    turn_count.odd? ? player1.name : player2.name
  end

  def current_player_sign
    turn_count.even? ? player1.sign : player2.sign
  end

  def turn(index)
    move(index, current_player_sign)
    display_board
  end
end
