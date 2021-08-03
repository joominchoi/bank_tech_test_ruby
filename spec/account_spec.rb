require 'account'

describe Account do
  let(:account) { Account.new }
  
  describe '#balance' do
    it 'displays the current balance' do
      expect(account.balance).to eq('£0')
    end
  end

  describe '#deposit' do
    it 'deposits and updates the balance' do
      account.deposit(1000)
      expect(account.balance).to eq('£1000')
    end
  end

  describe '#withdraw' do
    it 'withdraws and updates thebalance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq('£500') 
    end
  end

end