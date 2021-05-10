#!/usr/bin/env ruby
require './lib/player'
require './lib/game'
new_game = Game.new
puts 'Welcome to Ruby Tic-Tac-Toe! '
while new_game.player1.name == '' || new_game.contains_letter(new_game.player1.name).nil?
  puts 'Enter player 1 name: '
  new_game.player1.name = gets.chomp

  next unless new_game.player1.name == '' || new_game.contains_letter(new_game.player1.name).nil?

  puts 'Please enter a valid name for Player 1 (press enter to continue)'
  gets.chomp
  system('clear')
end

while new_game.player2.name == '' || new_game.contains_letter(new_game.player2.name).nil?
  puts 'Enter player 2 name: '
  new_game.player2.name = gets.chomp
  next unless new_game.player2.name == '' || new_game.contains_letter(new_game.player2.name).nil?

  puts 'Please enter a valid name for Player 2 (press enter to continue)'
  gets.chomp
  system('clear')
end
puts "#{new_game.player1.name} will use X while #{new_game.player2.name} will use O."

puts 'Lets start! (Press enter to continue)'
gets.chomp
system('clear')

until new_game.win? || new_game.tie?
  puts new_game.display_board
  puts "Its #{new_game.current_player} turn"
  puts 'Please select an available cell from the board (1-9): '
  input = new_game.input_to_index(gets.chomp)
  if new_game.valid_move?(input)
    new_game.turn(input)
    new_game.choices

  else
    puts 'Invalid move. Please enter an available number from 1-9'
    gets.chomp
  end

  if new_game.win?
    system('clear')
    puts new_game.display_board
    puts "#{new_game.other_player} you WIN the game!"
    gets.chomp
  elsif new_game.tie?
    system('clear')
    puts new_game.display_board
    puts "It's a TIE"
    puts 'GAME OVER!'
    gets.chomp
  end
  system('clear')
end
