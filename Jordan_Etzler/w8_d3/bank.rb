
module Bank

  class Account

    attr_accessor :name

    def initialize(options = {})
      @balance = options[:balance] || 0
      @name = options[:name]
    end

    def balance
      return @balance
    end

    def deposit(amount)
      @balance = @balance + amount
    end

    def withdraw(amount)
      if amount <= @balance
        @balance = @balance - amount
      else
        return false
      end

    end

  end

end
