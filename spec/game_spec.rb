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
        inplay.move(0, "O" || "X")
        inplay.move(1, "O" || "X")
        inplay.move(2, "O" || "X")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as second row is marked X" do
        inplay.move(3, "X" || "O")
        inplay.move(4, "X" || "O")
        inplay.move(5, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(6, "X" || "O")
        inplay.move(7, "X" || "O")
        inplay.move(8, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(0, "X" || "O")
        inplay.move(3, "X" || "O")
        inplay.move(6, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(1, "X" || "O")
        inplay.move(4, "X" || "O")
        inplay.move(7, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(2, "X" || "O")
        inplay.move(5, "X" || "O")
        inplay.move(8, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(0, "X" || "O")
        inplay.move(4, "X" || "O")
        inplay.move(8, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
      it "returns true as third row is marked X" do
        inplay.move(2, "X" || "O")
        inplay.move(4, "X" || "O")
        inplay.move(6, "X" || "O")
        inplay.choices
        expect(inplay.win?).to eql(true)
      end
    end
end


