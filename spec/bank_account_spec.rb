require 'bank_account'
describe BankAccount do
  describe "#balance" do
    it "has a balance with a default value of 0" do
      expect(subject.balance).to eq 0
    end
  end
end