require 'rspec'
require 'deck'

RSpec.describe "Deck" do
  subject(:deck) {Deck.new}
  
  describe "#initialize" do
    it "initializes with an instance of array" do
      expect(deck.cards.class).to eq(Array)
    end
    
    it "cards contain 52 different cards" do
      expect(deck.cards.length).to eq(52)
    end
  end
  
  
end
