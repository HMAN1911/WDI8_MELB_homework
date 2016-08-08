class Phone
  def initialize(number)
    @number = number.gsub(/\D/, "")
  end

  def area_code
    @number = @number.chars[0..2].to_s
    # some code to remove new line
    return @number
  end

  def to_s
    @number = @number.chars[0..2]
    # some code to add brackets
    # some code to add a space after the brackets
    # some code to add '-' at -4 from last
    return @number
  end

  def number
    if @number.length > 8 && @number.length < 10
      @number = "0000000000"
      return @number
    elsif @number.length == 11 && @number.chars.first == '1'
      @number[0] = ''
      return @number
    elsif @number.length == 11 && @number.chars.first != '1'
      @number = "0000000000"
      return @number
    elsif @number.length == 9
      @number = "0000000000"
      return @number
    elsif @number.length == 10 && @number.chars[0..2] == '123'
      return @number.area_code
    else
      return @number
    end
  end

end
