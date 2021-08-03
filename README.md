# Bank Tech Test Ruby
An example tech test to practice OO(Object-oriented) design and TDD(Test-driven development) skills. This practice session is about producing the best code you can when there is minimal time pressure.

The tech test requires you to make a program that imitates the basic functions of a bank account.

## Specification

### Requirements
* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

```
As a client,
So that I can save money,
I would like to be able to deposit money into my account.
```

```
As a client,
So that I can access money, 
I would like to be able to withdraw money from my account.
```

```
As a client,
So that I can keep a record,  
I would like to be able to print an account statement.
```

```
As a client,
So that I can track my transaction history,
I would like to be able to see the transaction dates, credit/debit amount and balance on the account statement. 
```

## CRC Cards
![CRC Cards](/images/CRC_cards.png)


