require 'account'

describe Account do
  let(:account) { Account.new }
  
  describe '#balance' do
    it 'displays the current balance' do
      expect(account.balance).to eq('£0')
    end
  end

  describe '#deposit' do
    it 'increase the balance' do
      account.deposit(1000)
      expect(account.balance).to eq('£1000')
    end
  end

end