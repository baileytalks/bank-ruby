require 'printer'

describe Printer do
  before(:each) do
    date = Date.strptime('01/01/2001', '%d/%m/%Y')
    @transaction_list = [
      { date: date, credit: 10, debit: nil, balance: 10 },
      { date: date, credit: nil, debit: 5, balance: 5 }
    ]
  end

  it 'prints the transaction list (in reverse order) to the command line' do
    h = "date || credit || debit || balance\n"
    t = "2001-01-01 ||  || 5.00 || 5.00\n2001-01-01 || 10.00 ||  || 10.00\n"
    expect { described_class.new(@transaction_list) }.to output(h + t).to_stdout
  end
end
