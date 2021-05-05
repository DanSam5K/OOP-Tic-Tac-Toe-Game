#!/usr/bin/env ruby
first_player = ''
second_player = ''
puts 'Welcome to Ruby Tic-Tac-Toe! '
while first_player == ''
  puts 'Enter player 1 name: '
  first_player = gets.chomp
  next unless first_player == ''

  puts 'Please enter a name for Player 1 (press enter to continue)'
  gets.chomp
  system('clear')
end
while second_player == ''
  puts 'Enter player 2 name: '
  second_player = gets.chomp
  next unless second_player == ''

  puts 'Please enter a name for Player 2 (press enter to continue)'
  gets.chomp
  system('clear')
end
puts "#{first_player} will use X while #{second_player} will use O."

puts 'Lets start! (Press enter to continue)'
gets.chomp
system('clear')

turns = 0
current_player = first_player
max_turns = rand(5..9)
while turns < max_turns
  # This is the current board, we are currently working on making a better looking board
  puts '+---+---+---+'
  puts '| 1 | 2 | 3 |'
  puts '+---+---+---+'
  puts '| 4 | 5 | 6 |'
  puts '+---+---+---+'
  puts '| 7 | 8 | 9 |'
  puts '+---+---+---+'
  puts "Its #{current_player} turn"
  puts 'Please select an available cell from the board (1-9): '
  if current_player == first_player
    player_1_cell = gets.chomp.to_i
    # if player inputs anything other than a number it will be equal to 0 therefore outside of the if condition
    if player_1_cell.positive? && player_1_cell < 10
      current_player = second_player
      turns += 1
    else
      puts 'Invalid move. Please enter a number from 1-9'
      gets.chomp
    end
  else
    player_2_cell = gets.chomp.to_i
    if player_2_cell.positive? && player_2_cell < 10
      current_player = first_player
      turns += 1
    else
      puts 'Invalid move, please enter a number from 1-9'
      gets.chomp
    end
  end
  if turns >= max_turns
    # for now the program chooses a random winner based on the results of rand
    tie = rand(1..2)
    current_player = if current_player == first_player
                       second_player
                     else
                       first_player
                     end
    system('clear')
    puts '+---+---+---+'
    puts '| 1 | 2 | 3 |'
    puts '+---+---+---+'
    puts '| 4 | 5 | 6 |'
    puts '+---+---+---+'
    puts '| 7 | 8 | 9 |'
    puts '+---+---+---+'
    # If max_turns equal to 9 the program will check if the tie value is equal to 1, in that case the game will be a tie
    if max_turns == 9 && tie == 1
      puts 'It\'s a Tie!'
      puts 'Game over'
    else
      puts "#{current_player} you WIN the game!"
    end

    gets.chomp
  end
  system('clear')
end
