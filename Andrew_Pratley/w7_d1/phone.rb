require 'pry'

class Phone
  def initialize(number)
    @number = number
  end

  def number
    @new_number = @number.gsub(/[ ()-.]/, "").sub('11', "1")
    if @new_number.length == 11
      return '0000000000'
    end
    if @new_number.length == 9
      return '0000000000'
    end
    return @new_number
  end

  def area_code
    @area_code = @number[0...3]
    return @area_code
  end

  def to_s
    @new_number = @number.insert(0, '(')
    @new_number = @new_number.insert(4, ') ')
    @new_number = @new_number.insert(9, '-')
    return @new_number
  end

end
