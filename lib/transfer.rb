require 'pry'

class Transfer


attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount, status = "pending")
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = status
end

def valid?
  #binding.pry
# if @amount > @sender.balance
#   return false
# elsif
 @sender.valid? && @receiver.valid?
 # return true
end

# end

def execute_transaction

if @amount > @sender.balance
  @status = "rejected"
    return "Transaction rejected. Please check your account balance."
#binding.pry
  # i = 0
  # while i < 1 do
elsif @status == "pending"
  @sender.balance -= @amount
  @receiver.balance += @amount
  @status = "complete"

end
end


def reverse_transfer

  #binding.pry
  if @status == "complete"
  @sender.balance += @amount
  @receiver.balance -= @amount
  @status = "reversed"
end
end
end
