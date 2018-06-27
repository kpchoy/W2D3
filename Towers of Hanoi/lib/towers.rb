class Towers
  attr_accessor :piles  
  def initialize
    @piles = [[3,2,1],[],[]]
  end
  
  def display
    @piles.each do |el|
      p el
    end
  end
  
  def move_pile(array)
    moving_disk = @piles[array[0]].pop 
    @piles[array[1]].push(moving_disk)
  end
  
  def valid_move?(array)
    if @piles[array[0]].nil? || @piles[array[1]].nil?
      raise "ArgumentError"
    elsif @piles[array[0]].empty? || @piles[array[1]].last == 1
      raise "ArgumentError"
    elsif array[0].between?(0,2) && array[1].between?(0,2)
      return true
    end 
    raise "ArgumentError"
  end
  
  def gets_move
    move = []
    puts "Which pile would you like to move from"
    move << gets.chomp.to_i 
    puts "Which pile would you like to move to"
    move << gets.chomp.to_i 
    move
  end
  
  def won?
    return false unless @piles[1] == [3,2,1] || @piles[2] == [3,2,1]
    true 
  end
  
  def play 
    until won?
      display 
      pos = gets_move
      if valid_move?(pos) == false 
        p "Wrong move, pease try again"
      else valid_move?(pos)
        move_pile(pos)
      end
    end 
    p "Game over, you won!"
  end 
end

if $PROGRAM_NAME == __FILE__ 
  game = Towers.new
  game.play 
end 
  