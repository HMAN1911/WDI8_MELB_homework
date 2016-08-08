require 'pry'
class Phone

  def initialize(number)
    @number = number
  end

  def number
    @number = @number.gsub(/\D/, '')
    # binding.pry
    if @number.length == 10
      return "#{@number}"
    elsif @number.length == 9
      return "0000000000"
    elsif @number.length  == 11
      # binding.pry
      if @number[0] != "1"
        return "0000000000"
      else
        # binding.pry
        return "#{@number[1..10]}"
      end
    end

  end

  def area_code
      area_code = @number[0..2]
  end

  def to_s
    return "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end

end

# p1 = Phone.new("6157143973")
# p1.area_code
