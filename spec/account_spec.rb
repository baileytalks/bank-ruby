require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'an account can be created' do
    expect(@account).to be_an_instance_of(Account)
  end

  it 'an account has a balance' do
    expect(@account.balance).to eq 0
  end

  it 'can accept a deposit' do
    expect { @account.deposit(100) }.not_to raise_error
  end

  it 'a deposit makes the balance go up by the right amount' do
    @account.deposit(100)
    expect(@account.balance).to eq 100
  end
end
