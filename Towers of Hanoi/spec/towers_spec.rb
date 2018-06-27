require "towers"
require "rspec"


RSpec.describe "Towers" do 
  subject(:towers) {Towers.new}

  describe "#display" do
    it "piles start with three arrays" do
      expect(towers.display).to include([],[],[3,2,1]) 
    end
  end
  
  describe "#move_pile" do 
    it "correctly moves the disk" do
      towers.move_pile([0,1])
      towers.move_pile([0,2])
      expect(towers.piles).to eq([[3],[1],[2]])
    end
  end 
  
  describe "#valid_move?" do
    it "return true if move is valid" do
      expect(towers.valid_move?([0,1])).to be true
    end
    
    it "return argument error if move is invalid" do
      expect{towers.valid_move?([1,3])}.to raise_error("ArgumentError")
    end
  end
  
  describe "#won?" do 
    let(:towers2) {Towers.new}
    it "returns false when game is initialized" do
      expect(towers.won?).to be false 
    end

    it "returns false when tower is not stacked in order" do
      towers2.piles = [[], [2, 3, 1], []]
      expect(towers2.won?).to be false 
    end
      
    it "returns true when tower is stacked correctly" do
      towers2.piles = [[], [3, 2, 1], []]
      expect(towers2.won?).to be true 
    end
  end 

  
end




