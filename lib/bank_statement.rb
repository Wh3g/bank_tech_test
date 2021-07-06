class BankStatement
  def show(transactions)
    "date || credit || debit || balance\n#{str_list(transactions)}"
  end

  private

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

  def str_list(transactions)
    array = []
    transactions.each do |record|
      array << "#{date_format(record[:date])} ||#{debit_credit_format(record[:credit])}||#{debit_credit_format(record[:debit])}|| #{decimal_places(record[:balance])}"
    end
    array.reverse.join("\n")
  end
end
