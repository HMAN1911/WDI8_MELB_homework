
class Phone

  def initialize(number)
    @number = number
  end

  def number
    @number = @number.gsub(/\D/, "")

    if @number.length == 11
       if (@number.each_char.first == '1')
         @number = @number[1..-1]
       else
         @number = '0000000000'
       end
    end

    if @number.length == 9
      @number = '0000000000'
    end

    return @number
  end

  def area_code
    @number = @number[0..2]
  end

  def to_s
    # return '(' + @number[0..2] + ') ' + @number[3..5] + '-' + @number[6..9]
    return "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end

end
