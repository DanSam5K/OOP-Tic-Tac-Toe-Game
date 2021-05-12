require './lib/game'
require './lib/player'

describe Game do
  describe '#display_board' do
    let(:inplay) {Game.new}
    it 'should display number from 1-9' do
      expect(inplay.display_board).to eql(
        " 1 | 2 | 3 \n" \
        "------------\n" \
        " 4 | 5 | 6 \n" \
        "------------\n" \
        " 7 | 8 | 9 \n"
      )
    end
  end

  describe '#choices' do
    let(:inplay) {Game.new}
    it 'should display available choices' do
      inplay.move(1, 'X')
      expect(inplay.choices).to eql([1, 'X', 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#win?' do
    let(:inplay) {Game.new}
    it 'returns true as first row is marked X' do
      inplay.move(0, 'O' || 'X')
      inplay.move(1, 'O' || 'X')
      inplay.move(2, 'O' || 'X')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as second row is marked X' do
      inplay.move(3, 'X' || 'O')
      inplay.move(4, 'X' || 'O')
      inplay.move(5, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(6, 'X' || 'O')
      inplay.move(7, 'X' || 'O')
      inplay.move(8, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(0, 'X' || 'O')
      inplay.move(3, 'X' || 'O')
      inplay.move(6, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(1, 'X' || 'O')
      inplay.move(4, 'X' || 'O')
      inplay.move(7, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(2, 'X' || 'O')
      inplay.move(5, 'X' || 'O')
      inplay.move(8, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(0, 'X' || 'O')
      inplay.move(4, 'X' || 'O')
      inplay.move(8, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
    it 'returns true as third row is marked X' do
      inplay.move(2, 'X' || 'O')
      inplay.move(4, 'X' || 'O')
      inplay.move(6, 'X' || 'O')
      inplay.choices
      expect(inplay.win?).to eql(true)
    end
  end

  describe '#tie?' do
    let(:inplay) {Game.new}
    it 'should display true if all board position is taken' do
      inplay.move(0, 'X')
      inplay.turn_count
      inplay.move(1, 'O')
      inplay.turn_count
      inplay.move(2, 'X')
      inplay.turn_count
      inplay.move(3, 'O')
      inplay.turn_count
      inplay.move(4, 'X')
      inplay.turn_count
      inplay.move(5, 'O')
      inplay.turn_count
      inplay.move(6, 'O')
      inplay.turn_count
      inplay.move(7, 'X')
      inplay.turn_count
      inplay.move(8, 'O')
      inplay.turn_count
      inplay.turn_count
      inplay.choices
      expect(inplay.tie?).to eql(true)
    end
  end
  describe '#input_to_index' do
    let(:inplay) {Game.new}
    it 'should convert user input to index' do
      expect(inplay.input_to_index('1')).to eql(0)
    end
  end

  describe '#move' do
    let(:inplay) {Game.new}
    it 'should detect the next player to make a move' do
      expect(inplay.move(0, 'X')).to eql('X')
    end

    it 'should detect the next player to make a move' do
      expect(inplay.move(1, 'O')).to eql('O')
    end
  end

  describe '#position_taken?' do
    let(:inplay) {Game.new}
    it 'should detect position' do
      expect(inplay.position_taken?(0)).to eql(true)
    end
  end

  describe '#valid_move?' do
    let(:inplay) {Game.new}
    it 'should detect move validity' do
      expect(inplay.valid_move?(0)).to eql(false)
    end
  end

  game_two = Game.new

  describe '#current_player' do
    game_two.player1.name = 'Tom'
    game_two.player2.name = 'Harry'
    it 'should return the name of player1' do
      game_two.move(0, 'X')
      game_two.choices
      game_two.turn_count
      expect(game_two.current_player).to eql(game_two.player2.name)
    end

    it 'should return the name of player2' do
      game_two.move(1, 'O')
      game_two.choices
      game_two.turn_count
      expect(game_two.current_player).to eql(game_two.player1.name)
    end
  end

  describe '#other_player' do
    game_two.player1.name = 'Tom'
    game_two.player2.name = 'Harry'
    it 'should return the name of player1' do
      game_two.move(2, 'X')
      game_two.choices
      game_two.turn_count
      expect(game_two.other_player).to eql(game_two.player1.name)
    end

    it 'should return the name of player2' do
      game_two.move(3, 'O')
      game_two.choices
      game_two.turn_count
      expect(game_two.other_player).to eql(game_two.player2.name)
    end
  end

  describe '#turn' do
    it 'should display the board with updated moves' do
      expect(game_two.turn(0)).to eql(
        " X | O | X \n" \
        "------------\n" \
        " O | 5 | 6 \n" \
        "------------\n" \
        " 7 | 8 | 9 \n"
      )
    end
  end
end
