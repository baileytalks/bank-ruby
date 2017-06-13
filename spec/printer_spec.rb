require 'printer'

describe Printer do
  it 'takes an array of hashes upon initialization' do
    expect { Printer.new([{}]) }.not_to raise_error
  end
end
