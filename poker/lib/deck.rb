require_relative 'card'

class Deck 
  attr_reader :cards

  SUITS = [:heart, :spade, :clover, :diamond]
  RANKS = [1,2,3,4,5,6,7,8,9,10,11,12,13]
  
  def initialize
    @cards = []
    populate
  end
  
  def populate
    SUITS.each do |suit|  
      RANKS.each do |rank|
        @cards << Card.new(suit,rank)
      end 
    end 
  end
  
end

if $PROGRAM_NAME == __FILE__
  deck = Deck.new
  p deck.cards 
end 