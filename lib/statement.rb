require './lib/printer'

## This class creates a list of transaction objects in an array
class Statement
  attr_reader :list

  def initialize(array)
    @list = []
    create_transaction_list(array)
    add_debit_or_credit
  end

  def printer
    Printer.new(@list)
  end

  private

  def create_transaction_list(array)
    array.each do |date, amount, balance|
      transaction = { date: date, amount: amount, balance: balance }
      @list.push(transaction)
    end
  end

  def add_debit_or_credit
    @list.each do |hash|
      if hash[:amount] < 0
        hash[:debit] = hash[:amount].abs
      else
        hash[:credit] = hash[:amount]
      end
      hash.delete(:amount)
    end
  end
end
