#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/game.rb'
new_game=Game.new
puts 'Welcome to Ruby Tic-Tac-Toe! '
#get name section
while new_game.player_1.name == ''
  puts 'Enter player 1 name: '
  new_game.player_1.name = gets.chomp
  next unless new_game.player_1.name == ''

  puts 'Please enter a name for Player 1 (press enter to continue)'
  gets.chomp
  system('clear')
end

while new_game.player_2.name == ''
  puts 'Enter player 2 name: '
  new_game.player_2.name = gets.chomp
  next unless new_game.player_2.name == ''

  puts 'Please enter a name for Player 2 (press enter to continue)'
  gets.chomp
  system('clear')
end
puts "#{new_game.player_1.name} will use X while #{new_game.player_2.name} will use O."


puts 'Lets start! (Press enter to continue)'
gets.chomp
system('clear')
#end get name section
current_player = new_game.player_1.name
turns=0
max_turns = 6
while turns < max_turns
  # This is the current board, we are currently working on making a better looking board
  puts new_game.display_board
  puts "Its #{new_game.current_player} turn"
  puts 'Please select an available cell from the board (1-9): '
    input=new_game.input_to_index(gets.chomp)
    # if player inputs anything other than a number it will be equal to 0 therefore outside of the if condition
    if new_game.valid_move?(input)
      new_game.turn(input)
turns+=1
    else
      puts 'Invalid move. Please enter an available number from 1-9'
      gets.chomp
    end
 
  if turns >= max_turns
    # for now the program chooses a random winner based on the results of rand
    tie = rand(1..2)
    current_player = if current_player == new_game.player_1.name
      new_game.player_2.name
                     else
                      new_game.player_1.name
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
