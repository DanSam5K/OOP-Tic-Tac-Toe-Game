require './player.rb'
class Game
    def initialize(player1, player2)
        @player1 = Player.new(self, "X")
        @player2 = Player.new(self, "O")
    end
    def winner?
        win_condition = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]
        @player1.store_selection
        for i in win_condition do
              
        end 
    end
end