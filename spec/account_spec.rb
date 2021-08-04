require 'account'

describe Account do
  let(:account) { Account.new }
  let(:date) {Time.new.strftime('%d/%m/%Y')}
  
  describe '#balance' do
    it 'displays the current balance' do
      expect(account.balance).to eq('Current balance: £0')
    end
  end

  describe '#deposit' do
    it 'makes a deposit and updates the balance' do
      account.deposit(1000)
      expect(account.balance).to eq('Current balance: £1000')
    end

    it 'updates the statement with the deposit date, deposit value and current balance' do
      account.deposit(1000)
      expect(account.statement).to include("#{date} || £1000 || || #{account.balance}")
    end

    it 'makes a deposit and returns the amount deposited' do
      account.deposit(1000)
      expect(account.deposit(1000)).to eq('Deposit amount: £1000')
    end
   
    it 'returns an error message if deposit amount is equal to or below 0' do
      expect(account.deposit(-1000)).to eq('Invalid amount. Please enter a value over 0')
    end
  end

  describe '#withdraw' do
    it 'returns an error message if withdrawal amount is equal to 0' do
      account.deposit(1000)
      expect(account.withdraw(0)).to eq('Invalid amount. Please enter a value over 0')
    end

    it 'makes a withdrawal and updates the balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq('Current balance: £500') 
    end

    it 'updates the statement with the withdrawal date, withdrawal value and current balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.statement).to include("#{date} || || £500 || #{account.balance}")
    end

    it 'makes a withdrawal and returns the amount withdrawn' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.withdraw(500)).to eq('Withdrawal amount: £500')
    end

    it 'returns an error message if withdrawal amount exceeds current balance' do
      expect(account.withdraw(500)).to eq('Insufficient funds')
    end
  end

end