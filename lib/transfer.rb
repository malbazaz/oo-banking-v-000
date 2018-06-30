class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status 
  attr_reader 

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  def valid?
   @sender.valid? && @receiver.valid?
  end 
    
  def execute_transaction
    if @sender.status == "valid"
      @sender.balance -= @amount
      @receiver.balance += @amount 
      @status = "complete"
    else 
      
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end 
  end 
  
  def reverse_transfer
  end 
end
