# Marketplace Checkout System

The test should take around 3 hours but is not strictly timed.
Our client is an online marketplace, here is a sample of some of the products available on our site:

| Product code | Name | Price |
| ------------ | ---- | ----- |
| 001 | Very Cheap Chair | £9.25 |
| 002 | Little table | £45.00 |
| 003 | Funky light | £19.95 |

Our marketing team want to offer promotions as an incentive for our customers to purchase these items.

If you spend over £60, then you get 10% off of your purchase. If you buy 2 or more very cheap chairs
then the price drops to £8.50.

Our check-out can scan items in any order, and because our promotions will change, it needs to be
flexible regarding our promotional rules.

The interface to our checkout looks like this (shown in Ruby):
```
co = Checkout.new(promotional_rules)
co.scan(item)
co.scan(item)
price = co.total
```

Implement a checkout system that fulfils these requirements. Do this outside of any frameworks. You
should use TDD.

Please use git and commit regularly so we can see your thought process.

We will review the code and discuss your approach when you have finished.

## How to install

- Clone this repository: ```$ git clone https://github.com/rolandosorbelli/marketplace-ruby```
- Navigate into the folder ```$ cd marketplace-ruby```
- Install all the gems by running ```$ bundle install```

## How to run

Once you are in the root folder of the app through your Terminal/Command Line just run the command:
```
$ rake test_data
```
and you will see 3 different scenarios with items in the basket and their own total price calculated according to the discounts applied.

## How to test

Once you are in the root folder of the app through your Terminal/Command Line just run the command:
```
$ rspec
```
and you will see all the tests that have been done. I could reach 100% test coverage by monitoring all the code that has to be tested using the gem ```simplecov```.

## Tech

- [Ruby](https://www.ruby-lang.org/en/)
- [RSpec](http://rspec.info/) for testing purposes
- [Rake](https://github.com/ruby/rake), a Make-like program implemented in Ruby that I used to run the Checkout System
- [SimpleCov](https://github.com/colszowka/simplecov) for test coverage
- [Rubocop](https://rubocop.readthedocs.io/en/latest/) for linting

## My approach

I started off by reading all the information I had and I sketched some diagrams and notes on my notebook so I could fully understand the task and the things required. Then, I spent some time working on the logic which I didn't find easy in the first place. Taking notes whilst reading the task of the test have helped me quite a lot to understand the math I had to face behind my test.

After that, I put my hands on the actual code, starting by creating a root folder and initialising a Gemfile where I installed all the gems that I wanted to use. Then, I created a ```spec``` folder where I kept all my test files.

I started by writing tests for my main Product model which is a Ruby Object initialised with instance variables: the test was failing, good thing! Just after that, I wrote my main code according to the failing test so I could see it passing. I used this TDD approach more or less with the whole tech test, I find this approach quite helpful because it gives me a clearer idea of where I am going with the challenge I am facing.
After the ```product.rb``` file I created a ```checkout.rb``` one which includes all the logic and the different discounts suggested by the task.

Eventually, I created my ```Rakefile``` that helped me to generate my 'front-end' on the Terminal without requiring files every time using IRB. I spent a little bit more than 3 hours on this task because I really wanted to make sure it was 100% tested and that it didn't have any linting problems (Rubocop helped me a lot in this). I think that if I had more time to spend on the test I would have focused more on testing some edge cases or trying to refactor my code as much as possible (the ```checkout.rb``` file contains quite long blocks of code so I would have definitely spent some time on making this Class smaller and initialising the new methods into the old ones by using dependency injection).

After all, it was a really nice and challenging experience that gave me the chance to explore some aspects of Ruby that I haven't explored before.
