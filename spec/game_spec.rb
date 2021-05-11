require './lib/game'
 
describe Game do
    inplay = Game.new()
    describe "#choices" do
      it "should display available choices" do
        inplay.move(1, "X")
        expect(inplay.choices).to eql([1, "X", 3, 4, 5, 6, 7, 8, 9])
      end
    end

    describe "#win?" do
      it "returns true as first row is marked X" do
        inplay.move(0, "X")
        inplay.move(1, "X")
        inplay.move(2, "X")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as second row is marked X" do
        inplay.move(3, "X")
        inplay.move(4, "X")
        inplay.move(5, "X")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(6, "X")
        inplay.move(7, "X")
        inplay.move(8, "X")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
    end
end


