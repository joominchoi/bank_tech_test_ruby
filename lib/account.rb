class Account

  def initialize
    @balance = 0
  end

  def balance
    "£#{@balance}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else 
      'Invalid amount' if amount > @balance
    end
  end

end

# account = Account.new
# puts account.balance
# account.deposit(1000)
# puts account.balance
# account.withdraw(5000)
# puts account.balance