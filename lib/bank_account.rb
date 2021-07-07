class BankAccount
  attr_reader :balance, :transactions

  def initialize(statement = BankStatement.new)
    @transactions = []
    @statement = statement
  end

  def deposit(amount, date)
    @transactions << { date: date, credit: amount }
  end

  def withdraw(amount, date)
    @transactions << { date: date, debit: amount }
  end

  def print_statement
    @statement.show(@transactions)
  end
end
