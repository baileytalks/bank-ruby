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
end
