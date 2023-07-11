require_relative "card"

class Board

 def initialize
  @grid = Array.new(4) {Array.new(4, " ")}
  @cards = ['a','a', "b","b","c",'c',"d", 'd', 'e','e','f', "f", 'g', 'g', 'h', 'h']
 end

 def grid
  @grid
 end
 def cards
  @cards
 end

 def [](pos)
  row, col = pos
  @grid[row][col]
 end
 def []=(pos, value)
  row, col = pos
  @grid[row][col] = value
 end
 def populate
     size = 16
     i = 0
     while i < size
      randrow = rand(0...@grid.length)
      randcol = rand(0...@grid.length)
      randpos = [randrow, randcol]
      if self[randpos] == " "
      self[randpos] = cards[i]
      i += 1
      end
     end
    @grid
 end
 

end