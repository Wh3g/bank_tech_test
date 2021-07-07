require 'bank_statement'

describe BankStatement do
  transactions1 = [{ date: '10-01-2012', credit: 100.00 }]
  transactions2 = [{ date: '11-01-2012', debit: 100.00 }]
  transactions = [{ date: '10-01-2012', credit: 100.00 },
    { date: '11-01-2012', debit: 100.00 }]

  describe '#show' do
    it 'returns deposit transaction records correctly' do
      expect(subject.show(transactions1)).to eq("date || credit || debit || balance\n10/01/2012 || 100.00 || || 100.00")
    end

    it 'returns withdrawal transaction records correctly' do
      expect(subject.show(transactions2)).to eq("date || credit || debit || balance\n11/01/2012 || || 100.00 || -100.00")
    end

    it 'returns multiple transaction records' do
      expect(subject.show(transactions)).to eq("date || credit || debit || balance\n11/01/2012 || || 100.00 || 0.00\n10/01/2012 || 100.00 || || 100.00")
    end
  end
end
