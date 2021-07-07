class BankStatement
  def show(transactions)
    "date || credit || debit || balance\n#{str_list(transactions)}"
  end

  private
  def str_list(transactions)
    array = []
    balance = 0.0
    transactions.each do |record|
      balance = calc_balance(balance, record)
      array << "#{date_format(record[:date])} ||#{debit_credit_format(record[:credit])}||#{debit_credit_format(record[:debit])}|| #{decimal_places(balance)}"
    end
    array.reverse.join("\n")
  end

  def debit_credit_format(number)
    if number.nil?
      ' '
    else
      ' ' + decimal_places(number) + ' '
    end
  end

  def decimal_places(number)
    '%.2f' % number
  end

  def date_format(date)
    2.times do
      date['-'] = '/'
    end
    date
  end

  def calc_balance(balance, record)
    balance += record[:credit] unless record[:credit].nil?
    balance -= record[:debit] unless record[:debit].nil?
    balance
  end
end
