class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    transactions << "#{date_format(date)} || #{decimal_places(amount)} || || #{decimal_places(@balance)}"
  end

  def withdraw(amount, date)
    @balance -= amount
    transactions << "#{date_format(date)} || || #{decimal_places(amount)} || #{decimal_places(@balance)}"
  end

  def bank_statement
    "date || credit || debit || balance\n#{@transactions.reverse.join("\n")}"
  end

  private

  def decimal_places(number)
    '%.2f' % number
  end

  def date_format(date)
    2.times do
      date['-'] = '/'
    end
    date
  end
end
