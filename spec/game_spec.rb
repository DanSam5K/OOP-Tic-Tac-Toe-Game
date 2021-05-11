require './lib/game'
 
describe Game do
    inplay = Game.new()
    describe "#choices" do
        it "should display choices from 1-9" do
            expect(inplay.choices).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
        end
    end
end


