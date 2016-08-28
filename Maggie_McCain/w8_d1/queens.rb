require 'pry'

class Queens
  attr_accessor :white, :black

  def initialize(input = "")
    if input == ""
      @white = [0, 3]
      @black = [7, 3]
    else
      @white = input[:white]
      @black = input[:black]
      if @white == @black
        raise ArgumentError
      end
    end

  end

 #  def to_s
 #    @board
 #    new_str = ''
 #    i = 0
 #    while i < 8 do
 #      j = 0
 #      while j < 8 do
 #        if(i == @white[0] && j == @white[1])
 #          new_str = new_str + 'W '
 #        elsif(i == @black[0] && j == @black[1])
 #          new_str = new_str + "B "
 #        elsif(j!=7)
 #          new_str = new_str + 'O '
 #        else
 #          new_str = new_str + "O "
 #        end
 #        if(j == 7)
 #          new_str = new_str[0...new_str.length-1] + "\n"
 #        end
 #      j += 1
 #      end
 #    i += 1
 #    end
 #    @board = new_str[0...new_str.length-1]
 #    return @board
 #  end

  def attack?
    if @white[0] == @black[0] || @white[1] == @black[1]
      return true
    else
      return false
    end
  end

end
