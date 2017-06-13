# 🏦 Bank Tech Test (in Ruby) 🏦

A sample tech test, using Ruby. This program is a command line tool. Acceptance criteria below:

### *Requirements*
* *You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)*
* *Deposits, withdrawal.*
* *Account statement (date, amount, balance) printing.*
* *Data can be kept in memory (it doesn't need to be stored to a database or anything).*

### *Acceptance criteria*

*Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:*
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## 🏁 Getting started
```
git clone git@github.com:baileytalks/bank-tech-test.git
bundle
```
## Running tests

`rspec`

## Usage
```
irb
require './lib/account.rb'
```
Follow these instructions to run the program:

1. Run the program and create a bank account:
```
> account = Account.new
=> #<Account:0x007fcde501f260 @balance=0, @transactions=[]>
```
2. Deposit £10
```
> account.deposit(10)
=> [{:date=>"12/06/2017", :credit=>10, :debit=>nil, :balance=>10}]
```
3. Withdraw £5
```
> account.withdraw(5)
=> [{:date=>"12/06/2017", :credit=>10, :debit=>nil, :balance=>10}, {:date=>"12/06/2017", :credit=>nil, :debit=>5, :balance=>5}]
```
4. Display the balance
```
> account.balance
=> 5
```
5. Print a statement
```
> account.print
date || credit || debit || balance
12/06/2017 ||  || 5.00 || 5.00
12/06/2017 || 10.00 ||  || 10.00
 => nil
```

## 👨‍👩‍👧‍👦 User stories
```
As a client,
So I can save and spend money,
I need to have a bank account.

As a client,
So I can check how much money I have to spend,
I need to have a bank balance.

As a client,
So I can spend money,
I first need to deposit money into my bank account.

As a client,
So I can spend money,
I need to make withdrawals from my bank account.

As a client,
So I can check my transactions match what my bank has recorded,
I need to see a printed bank statement.

As a client,
So I can review my bank statement efficiently,
Transactions should be listed by date, with the newest first.
```
