# piggy_bank app

A piggy_bank app with user story and TDD.

### How to use

```shell
cd piggy_bank/
ruby lib/piggy_bank.rb

Run the tests: 
rspec spec/piggy_bank_spec.rb
```

```shell
irb
3.0.0 :002 > require './lib/piggy_bank.rb'
 => true 
3.0.0 :003 > piggy_bank = PiggyBank.new
 => #<PiggyBank:0x000000014ca40b58 @coins=0> 
3.0.0 :004 > piggy_bank.put_coins(18)
 => 18 
3.0.0 :005 > piggy_bank.shake
 => "cling" 
3.0.0 :006 > piggy_bank.break
 => 18 
```

### User stories

```shell
As a user,
So that I can save money
I can put coins in my piggy bank
```

```shell
As a user,
So that I know whether there are coins in my piggy bank
I can shake it, and it will “cling” if there is money in it
```

```shell
As a user,
So I can enjoy my hard earned savings
I can break my piggy bank and get back the number or coins that I had put in
```