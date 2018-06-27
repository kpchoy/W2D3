require 'methods'
require 'rspec'

RSpec.describe "Methods" do 
  describe "#my_uniq" do 
    it "removes all the duplicates" do 
      expect([1,1,2,2].my_uniq).to eq([1,2])
    end 
    
    it "removes multiple duplicates" do 
      expect([1,1,1,1,1,1,3,3,3,3,3].my_uniq).to eq([1,3])
    end
    
    it "does not use built in method uniq" do 
      original_array = [1,1,1,1,1,1,3,3,3,3,3]
      expect(original_array).to_not receive(:uniq)
      original_array.my_uniq 
    end  
  end 
  
    describe "#two_sum" do
      it "find all pairs that sums to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to include([2, 3],[0, 4])
      end
      
      it "sorts all pairs in alphabetical order" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4],[2, 3]])
      end
    end
    
    
    describe "#my_transpose" do 
        array = [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
        ]
        
      it "convert rows to columns, convert columns to rows" do
        expect(my_transpose(array)).to eq([
          [0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]
          ])
      end
    end
  
  describe "#stock_picker" do 
    it "picks two indicies with greatest difference" do
      expect(stock_picker([4,5,6,7])).to eq([0,3])
    end
    
    it "must buy stock before selling" do
      expect(stock_picker([5,4,2,3,5])).to eq([2,4])
    end
  end 
  
  
  
  
  
  
  
end 


