require 'date'

## This class has responsibility for holding and managing a balance
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance      = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    save_transaction(amount)
  end

  def withdraw(amount)
    @balance -= amount
    save_transaction(-amount)
  end

  private

  def save_transaction(amount)
    @transactions.push([date, amount, @balance])
  end

  def date
    DateTime.now.strftime('%d/%m/%Y')
  end
end
