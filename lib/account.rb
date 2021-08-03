class Account

  CURRENT_BALANCE = 0

  def balance
    "£" + "#{CURRENT_BALANCE}"
  end

end

# account = Account.new
# puts account.balance