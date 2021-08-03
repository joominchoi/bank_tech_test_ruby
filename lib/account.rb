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
    @balance -= amount
  end

end

# account = Account.new
# puts account.balance
# account.deposit(1000)
# puts account.balance
# account.withdraw(500)
# puts account.balance