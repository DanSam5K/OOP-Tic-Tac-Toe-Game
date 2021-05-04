require './player.rb'
class Game

    def initialize()
        @board = Player.new(9, " ")
    end
    WIN_COMBINATION = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]
    

   
end