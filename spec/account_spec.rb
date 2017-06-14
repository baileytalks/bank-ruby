require 'account'
require 'spec_helper'

describe Account do
  before(:each) do
    @account = described_class.new
    deposit_100
  end

  it 'a deposit makes the balance go up by the right amount' do
    expect(@account.balance).to eq 100
  end

  it 'a withdrawal makes the balance go down by the right amount' do
    @account.withdraw(10)
    expect(@account.balance).to eq(90)
  end

  it 'an account has a list of transactions stored in an array' do
    expect(@account.transactions.length).to eq 1
  end

  it 'prints a statement to the command line' do
    h = "date || credit || debit || balance\n"
    today = DateTime.now.strftime('%d/%m/%Y')
    t = "#{today} || 100.00 ||  || 100.00\n"
    expect { @account.statement }.to output(h + t).to_stdout
  end
end
