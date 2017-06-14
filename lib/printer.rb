## This class prints the bank statement on the command line
class Printer
  def initialize(transaction_list)
    @list = transaction_list
    print_statement
  end

  private

  def print_statement
    puts 'date || credit || debit || balance'
    @list.reverse.each do |t|
      @credit   = change_to_currency(t[:credit])
      @debit    = change_to_currency(t[:debit])
      @balance  = change_to_currency(t[:balance])
      puts "#{t[:date]} || #{@credit} || #{@debit} || #{@balance}"
    end
  end

  def change_to_currency(number)
    format('%.2f', number) unless number.nil?
  end
end
