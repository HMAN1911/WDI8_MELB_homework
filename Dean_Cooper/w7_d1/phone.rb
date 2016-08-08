require 'pry'

class Phone

  # attr_accessor :number

  def initialize(number)
    @number = number
  end

  def number
    # @number.gsub(/[^a-z0-9]/i, '')
    @number = @number.gsub(/\D/, "")

    if (@number.length == 11)

      if  (@number.each_char.first == '1')
        @number.slice!(0)
        #@number[1..-1]
      else
        @number = '0000000000'
      end
    elsif (@number.length > 11 || @number.length < 10)
      @number = '0000000000'
    end
    # puts @number
    return @number
  end

  def area_code
      return @number[0..2]
  end

  def to_s
    return '(' + @number[0..2] + ') '+@number[3..5]+'-'+@number[6..9]
  end


end
