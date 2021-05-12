require './lib/player'

describe Player do
  let(:available_player) {Player.new('player_name', 'X')}
  describe '#choice' do
    it 'Should add selected number and return selection array' do
      expect(available_player.choice(0)).to eql([0])
    end
  end
end
