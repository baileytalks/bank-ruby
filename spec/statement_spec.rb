require 'statement'

describe Statement do
  before(:each) do
    @statement = Statement.new([['date', 10, 10], ['date', -10, 0]])
  end

  it 'adds hashes to the array for each transaction in the array' do
    expect(@statement.list[0]).to be_a(Hash)
  end

  it 'creates a hash with a date key and value pair' do
    expect(@statement.list[0][:date]).to eq('date')
  end

  it 'hash contains a credit if the amount is > 0' do
    expect(@statement.list[0][:credit]).to eq(10)
  end

  it 'hash leaves debit as nil if the amount is > 0' do
    expect(@statement.list[0][:debit]).to eq(nil)
  end

  it 'debits are recorded as positive integers in the hash' do
    expect(@statement.list[1][:debit]).to eq(10)
  end
end
