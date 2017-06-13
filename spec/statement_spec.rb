require 'statement'

describe Statement do
  it 'takes a list of transactions when initialized' do
    expect { create_statement }.not_to raise_error
  end
end
