require './lib/game'
 
describe Game do
    inplay = Game.new()
    describe "#choices" do
        it "should display available choices" do
            inplay.move(1, "X")
            expect(inplay.choices).to eql([1, "X", 3, 4, 5, 6, 7, 8, 9])
        end
    end
end


