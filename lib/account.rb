class Account

  def initialize
    @balance = 0
    @transactions = []
  end

  def balance
    "£#{@balance}"
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      @transactions << credit(amount)
    else
      'Invalid amount. Please enter a value over 0'
    end
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      @transactions << debit(amount)
    else 
      'Insufficient funds' 
    end
  end

  def statement(transactions)
    @transactions = transactions
  end

end
private

def date
  time = Time.new
  time.strftime('%d/%m/%y')
end

def credit(amount)
  "#{date} || £#{amount} || || #{@balance}"
end

def debit(amount)
  "#{date} || || £#{amount} || #{@balance}"
end

#I was running out of time so I crammed everything in to one class.
#I will definitely be looking into seperating the classes so that the
#transaction history and printing of the statement is seperate.