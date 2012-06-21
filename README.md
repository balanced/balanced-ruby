# Balanced

Online Marketplace Payments

[![Build Status](https://secure.travis-ci.org/balanced/balanced-ruby.png)](http://travis-ci.org/balanced/balanced-ruby)

## Installation

Add this line to your application's Gemfile:

    gem 'balanced'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install balanced

## Usage

See https://www.balancedpayments.com/docs/ruby for tutorials and documentation.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Write your code **and unit tests**
4. Ensure all tests still pass (`bundle exec rspec`)
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new pull request


### Specs

The spec suite is a work in progress.  Existing specs can either be run
using [guard](https://github.com/guard/guard) or rake.

Guard

    $ bundle exec guard

Rake

    $ rake spec

We use [VCR](https://www.relishapp.com/myronmarston/vcr/docs) to stub
out and save http interactions.  Cassettes are not stored in the repo.
They are generated the first time the spec suite is run and stored in
spec/cassettes.  To clear them and regenerate:

    $ rm -rf spec/cassettes


### Building Documentation

Documentation is build using YARD - http://rubydoc.info/docs/yard
 
    export AMAZON_ACCESS_KEY_ID='xxx'
    export AMAZON_SECRET_ACCESS_KEY='yyy' 
    ./upload_docs.rb
