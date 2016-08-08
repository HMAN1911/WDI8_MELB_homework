

class Phone

  attr_accessor :number

  def initialize(number)

    if number.start_with?('1') && number.length == 11
      @number = number.slice!(1, 11)

    else
      @number = number.gsub(/[^a-z0-9]/i, '')
    end

    return @number

  end

  if @number.length == 11
    @number = "0000000000"
    return @number
  else
    return @number
  end

end
