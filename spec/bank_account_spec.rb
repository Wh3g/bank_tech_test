require 'bank_account'
describe BankAccount do
  describe "#balance" do
    it "has a balance with a default value of 0" do
      expect(subject.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "increases the balance value" do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
  end

  describe "#withdraw" do
    it "decreases the bank balance" do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to eq 50
    end
  end
end