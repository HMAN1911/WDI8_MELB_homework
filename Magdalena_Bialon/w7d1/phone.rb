class Phone

 def initialize(number)
   @number = number
 end


   def number
    @number = @number.gsub(/\D/, "")

    if @number.length >= 11 && @number.each_char.first == '1'
      @number.slice!(0)
    end

    if @number.length >= 11 || @number.length <= 9
      @number = "0000000000"
    end

    return @number

   end



    def area_code
      return @number[0..2]
    end

    def to_s
      return "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
    end

end
