class BankAccount
  attr_reader :balance, :transactions
  
  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    transactions << "#{date} || #{decimal_places(amount)} || || #{decimal_places(@balance)}"
  end

  def withdraw(amount)
    @balance -= amount
  end

  private
  def decimal_places(number)
    '%.2f' % number
  end
end
