require 'bank_account'

describe BankAccount do
  describe '#balance' do
    it 'has a balance with a default value of 0' do
      expect(subject.balance).to eq 0
    end
  end

  context 'with a deposit' do
    before do
      subject.deposit(100.00, '10-01-2012')
      @deposit_str = '10/01/2012 || 100.00 || || 100.00'
      @deposit_hash = { date: '10-01-2012', credit: 100.00, balance: 100.00 }
    end

    describe '#deposit' do
      it 'increases the balance value' do
        expect(subject.balance).to eq 100
      end

      it 'saves the transaction' do
        expect(subject.transactions[-1]).to eq(@deposit_hash)
      end
    end

    context 'with a withdrawal' do
      before do
        subject.withdraw(50, '10-01-2012')
        @withdrawal_str = '10/01/2012 || || 50.00 || 50.00'
        @withdrawal_hash = { date: '10-01-2012', debit: 50.00, balance: 50.00 }
      end

      describe '#withdraw' do
        it 'decreases the bank balance' do
          expect(subject.balance).to eq 50
        end

        it 'saves the transaction' do
          expect(subject.transactions[-1]).to eq(@withdrawal_hash)
        end
      end
    end
  end
end
