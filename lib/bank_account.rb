class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    @transactions << { date: date, credit: amount, balance: @balance }
  end

  def withdraw(amount, date)
    @balance -= amount
    @transactions << { date: date, debit: amount, balance: @balance }
  end
end
