#!/usr/bin/env ruby
player_1=""
player_2=""
puts "Welcome to Ruby Tic-Tac-Toe! "
while player_1==""
puts "Enter player 1 name: "
player_1 = gets.chomp
if player_1==""
  puts "Please enter a name for Player 1 (press enter to continue)"
  gets.chomp
  system("clear")
end
end
while player_2==""
puts "Enter player 2 name: "
player_2 = gets.chomp
if player_2==""
  puts "Please enter a name for Player 2 (press enter to continue)"
  gets.chomp
  system("clear")
end
end
puts "#{player_1} will use X while #{player_2} will use O."

puts "Lets start! (Press enter to continue)"
gets.chomp
