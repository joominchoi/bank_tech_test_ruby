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

  def statement
    puts header
    @transactions.each do |transaction|
      puts transaction
    end
  end

end


private

def date
  time = Time.new
  time.strftime('%d/%m/%Y')
end

def credit(amount)
  "#{date} || £#{amount} || || #{balance}"
end

def debit(amount)
  "#{date} || || £#{amount} || #{balance}"
end

def header
  "date || credit || debit || balance"
end