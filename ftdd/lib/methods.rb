class Array 
  def my_uniq
    hash_map = Hash.new(0)
    self.each do |el|
      hash_map[el] += 1 
    end 
    
    hash_map.keys
  end 
  
  def two_sum
    result = []
    self.each_with_index do |el, idx1|
      (idx1+1...self.length).each do |idx2|
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    result
  end
end 

def my_transpose(array)
  result = []
  
  array.each_with_index do |row, i|
    temp_array =[]
    
    row.each_with_index do |el, j|
      temp_array << array[j][i]
    end
    result << temp_array 
  end
  result 
end

def stock_picker(array)
  result = []
  greatest = 0
  
  array.each_with_index do |el, idx1|
    (idx1+1...array.length).each do |idx2|
      if array[idx2] - array[idx1] > greatest
        greatest = array[idx2] - array[idx1]
        result = [idx1, idx2]
      end 
    end
  end
  
  result
end







