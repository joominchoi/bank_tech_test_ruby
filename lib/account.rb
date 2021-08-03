class Account

  def initialize
    @balance = 0
  end

  def balance
    "£#{@balance}"
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
    else
      'Invalid amount. Please enter a value over 0'
    end

  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else 
      'Insufficient funds' 
    end
  end

end

# account = Account.new
# puts account.balance
# account.deposit(1000)
# puts account.balance
# account.withdraw(5000)
# puts account.balance