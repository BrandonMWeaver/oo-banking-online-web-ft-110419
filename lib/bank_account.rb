class BankAccount
  attr_accessor :balance
  attr_reader :name, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end
  
  def valid?
    return @balance > 0 && @status == "open"
  end
end
