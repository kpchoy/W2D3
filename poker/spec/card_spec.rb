require 'rspec'
require 'card'

RSpec.describe "card" do 
  subject(:king) {Card.new(:heart, 13)}
  describe "#initialize" do 
    it "initializes with suit" do
      expect(king.suit).to eq(:heart)
    end
    
    it "initializes with number" do 
      expect(king.rank).to eq(13)
    end 
  end 
end 