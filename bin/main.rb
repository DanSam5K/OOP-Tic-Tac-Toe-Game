#!/usr/bin/env ruby
player1 = ''
player2 = ''
puts 'Welcome to Ruby Tic-Tac-Toe! '
while player1 == ''
  puts 'Enter player 1 name: '
  player1 = gets.chomp
  next unless player1 == ''

  puts 'Please enter a name for Player 1 (press enter to continue)'
  gets.chomp
  system('clear')
end
while player2 == ''
  puts 'Enter player 2 name: '
  player2 = gets.chomp
  next unless player2 == ''

  puts 'Please enter a name for Player 2 (press enter to continue)'
  gets.chomp
  system('clear')
end
puts "#{player1} will use X while #{player2} will use O."

puts 'Lets start! (Press enter to continue)'
gets.chomp
system('clear')

turns = 0
current_player = player1

while turns < 6
  # This is the current board, we are currently working on making a better looking board
  puts '+---+---+---+'
  puts '| 1 | 2 | 3 |'
  puts '+---+---+---+'
  puts '| 4 | 5 | 6 |'
  puts '+---+---+---+'
  puts '| 7 | 8 | 9 |'
  puts '+---+---+---+'

  puts "Its #{current_player} turn"
  puts 'Please select an available cell: '
  if current_player == player1
    player_1_cell = gets.chomp.to_i
    # if player inputs anything other than a number it will be equal to 0 therefore outside of the if condition
    if player_1_cell.positive? && player_1_cell < 10
      current_player = player2
      turns += 1

    else
      puts 'Invalid move, please enter a number from 1-9'
      gets.chomp
    end
  else
    player_2_cell = gets.chomp.to_i
    if player_2_cell.positive? && player_2_cell < 10
      current_player = player1
      turns += 1
    else
      puts 'Invalid move, please enter a number from 1-9'
      gets.chomp
    end
  end
  if turns == 6
    # for now the program chooses a random winner based on the results of rand
    winner = rand(1..2)
    if winner == 1
      puts "#{player1} is the winner!!"
    else
      puts "#{player2} is the winner!!"
    end
    gets.chomp
  end
  system('clear')
end
