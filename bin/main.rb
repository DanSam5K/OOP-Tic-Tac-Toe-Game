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
system("clear")

turns=0
current_player=player_1 

while turns<6
  #This is the current board, we are currently working on making a better looking board
  puts "+---+---+---+"
  puts "| 1 | 2 | 3 |"
  puts "+---+---+---+"
  puts "| 4 | 5 | 6 |"
  puts "+---+---+---+"
  puts "| 7 | 8 | 9 |"
  puts "+---+---+---+"
  
  if current_player==player_1  
    puts "Its #{current_player} turn"
    puts "Please select an available cell: "
    player_1_cell=gets.chomp.to_i
    #if player inputs anything other than a number it will be equal to 0 therefore outside of the if condition
    if player_1_cell>0 &&  player_1_cell<10
    current_player=player_2
    turns+=1
    
    else
      puts "Invalid move, please enter a number from 1-9"
      gets.chomp
    end
    else
    puts "Its #{current_player} turn"
    puts "Please select an available cell: "
    player_2_cell=gets.chomp.to_i
    if player_2_cell>0  &&  player_2_cell<10
    current_player=player_1
    turns+=1
    else
      puts "Invalid move, please enter a number from 1-9"
      gets.chomp
    end
    end
    if turns==6
      #for now the program chooses a random winner based on the results of rand
      winner=rand(1..2)
      if winner==1
        puts "#{player_1} is the winner!!"
        gets.chomp
      else
        puts "#{player_2} is the winner!!"
        gets.chomp
      end
    end 
    system("clear")
    end
    