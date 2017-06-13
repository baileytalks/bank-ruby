require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'an account has a balance' do
    expect(@account.balance).to eq 0
  end

  it 'a deposit makes the balance go up by the right amount' do
    @account.deposit(100)
    expect(@account.balance).to eq 100
  end

  it 'a withdrawal makes the balance go down by the right amount' do
    @account.withdraw(10)
    expect(@account.balance).to eq(-10)
  end
end
