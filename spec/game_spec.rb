require './lib/game'
 
describe Game do
    inplay = Game.new()

    describe "#display_board" do
    it "should display number from 1-9" do
      
      expect(inplay.display_board).to eql(
      " #{1} | #{2} | #{3} \n" \
      "------------\n" \
      " #{4} | #{5} | #{6} \n" \
      "------------\n" \
      " #{7} | #{8} | #{9} \n"
    )
      end
    end

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

    describe "#tie?" do
      it "should display true if all board position is taken" do
        inplay.move(0, "X")
        inplay.turn_count
        inplay.move(1, "O")
        inplay.turn_count
        inplay.move(2, "X")
        inplay.turn_count
        inplay.move(3, "O")
        inplay.turn_count
        inplay.move(4, "X")
        inplay.turn_count
        inplay.move(5, "O")
        inplay.turn_count
        inplay.move(6, "O")
        inplay.turn_count
        inplay.move(7, "X")
        inplay.turn_count
        inplay.move(8, "O")
        inplay.turn_count
        inplay.turn_count 
        inplay.choices
        expect(inplay.tie?).to eql(false)
      end
    end
    describe "#input_to_index" do
      it "should convert user input to index" do
        expect(inplay.input_to_index("1")).to eql(0)
      end
    end
end


