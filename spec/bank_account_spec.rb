require 'bank_account'
describe BankAccount do
  describe "#balance" do
    it "has a balance with a default value of 0" do
      expect(subject.balance).to eq 0
    end
  end

  context "with a deposit" do
    before do
      subject.deposit(100.00, "10/01/2012")
    end

    describe "#deposit" do
      it "increases the balance value" do
       expect(subject.balance).to eq 100
     end

      it "saves the transaction" do
        expect(subject.transactions[-1]).to eq("10/01/2012 || 100.00 || || 100.00")
      end
    end

    describe "#withdraw" do
      it "decreases the bank balance" do
        subject.withdraw(50)
        expect(subject.balance).to eq 50
      end
    end
  end
end
