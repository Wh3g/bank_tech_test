class BankAccount
  attr_reader :balance, :transactions

  def initialize(statement = BankStatement.new)
    @balance = 0.00
    @transactions = []
    @statement = statement
  end

  def deposit(amount, date)
    @balance += amount
    @transactions << { date: date, credit: amount, balance: @balance }
  end

  def withdraw(amount, date)
    @balance -= amount
    @transactions << { date: date, debit: amount, balance: @balance }
  end

  def print_statement
    @statement.show(@transactions)
  end
end
