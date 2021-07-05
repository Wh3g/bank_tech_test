# bank_tech_test

This is a programme that creates a bank account for the user, with which the user can deposit and withdraw money, as well as see the bank statement, which is a list of all their past transactions.

## Installation

In order to run this programme on your own machine, you can simply clone this repository and run the following commands to install the relevent gems:

```
cd bank_tech_test
bundle install # This installs the gems in the Gemfile
irb 
  > require "./lib/bank_account"
```

## Testing

This program is tested using RSpec, which means that you will be able to test the program by running `rspec` in the directory. You will also be able to see the test coverage upon running `rspec`.

## Approach

In building this program, I followed Test-Driven-Development practices. I would write tests that my program would need to pass and then write code to pass the tests in the simplest way. I started by building the `#deposit` and `#withdraw` functionality, first implementing the feature to add and subtract from the `@balance`, then moving on to saving each transaction in an array. After that was done, I was then able to have `#bank_statement` return the transaction records using array manipulation.