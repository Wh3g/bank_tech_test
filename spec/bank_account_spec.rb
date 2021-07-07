require 'bank_account'

describe BankAccount do
  context 'with a deposit' do
    before do
      subject.deposit(100.00, '10-01-2012')
      @deposit_str = '10/01/2012 || 100.00 || || 100.00'
      @deposit_hash = { date: '10-01-2012', credit: 100.00 }
    end

    describe '#deposit' do
      it 'saves the transaction' do
        expect(subject.transactions[-1]).to eq(@deposit_hash)
      end
    end

    context 'with a withdrawal' do
      before do
        subject.withdraw(50, '10-01-2012')
        @withdrawal_str = '10/01/2012 || || 50.00 || 50.00'
        @withdrawal_hash = { date: '10-01-2012', debit: 50.00 }
      end

      describe '#withdraw' do
        it 'saves the transaction' do
          expect(subject.transactions[-1]).to eq(@withdrawal_hash)
        end
      end

      describe '#statement' do
        it 'returns the bank statement' do
          expect(subject.print_statement).to eq("date || credit || debit || balance\n#{@withdrawal_str}\n#{@deposit_str}")
        end
      end
    end
  end
end
