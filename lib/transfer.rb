class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    return @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if valid?
      @sender.balance -= amount
      @receiver.balance += amount
    end
  end
end
