require 'account'

describe Account do
  
  describe '#balance' do
    it 'displays the current balance' do
      expect(subject.balance).to eq('£0')
    end
  end

end