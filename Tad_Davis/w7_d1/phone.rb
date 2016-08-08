class Phone

attr_accessor :number

def initialize(number)
	
 if number.start_with?('1') && number.length == 11 
     
     @number = number.slice!(1, 11 )
    
    elsif number.length == 9 || number.length == 11
    		return @number = "0000000000"
    
   
    else
      @number = number.gsub(/[^a-z0-9]/i, '')
    end

    return @number

  end

def area_code
    return number[0..2]
end

=begin
def pretty_print

  number 

end=end

end #end of class