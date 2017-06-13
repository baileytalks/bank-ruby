## This class creates a list of transaction objects in an array
class Statement
  attr_reader :list

  def initialize(array)
    @list = []
    create_transaction_list(array)
    add_debit_or_credit
  end

  private

  def create_transaction_list(array)
    array.each do |date, amount, balance|
      transaction = {}
      transaction[:amount]  = amount
      transaction[:date]    = date
      transaction[:balance] = balance
      @list.push(transaction)
    end
  end

  def add_debit_or_credit
    @list.each do |hash|
      if hash[:amount] < 0
        hash[:debit] = hash[:amount].abs
        hash[:credit] = nil
      else
        hash[:debit] = nil
        hash[:credit] = hash[:amount]
      end
      hash.delete(:amount)
    end
  end
end
