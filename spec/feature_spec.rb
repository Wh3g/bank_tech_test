require 'bank_account'
require 'bank_statement'

describe "bank account" do
  it "returns a bank statement with the correct transaction records" do
    account = BankAccount.new
    account.deposit(1000, "10-01-2012")
    account.deposit(2000, "13-01-2012")
    account.withdraw(500, "14-01-2012")
    expect(account.print_statement).to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
  end
end