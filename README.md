# Balanced

Online Marketplace Payments

[![Build Status](https://secure.travis-ci.org/balanced/balanced-ruby.png)](http://travis-ci.org/balanced/balanced-ruby)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/balanced/balanced-ruby)

## Installation

Add this line to your application's Gemfile:

    gem 'balanced'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install balanced

## Documentation & Usage

* [Balanced Overview](https://www.balancedpayments.com/docs/overview?language=ruby)
* [RDoc](http://rubydoc.info/gems/balanced)
* [Balanced API with Ruby examples](https://www.balancedpayments.com/docs/api?language=ruby)
* [Example scripts](https://github.com/balanced/balanced-ruby/tree/master/examples)

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


### Issues

All issues should be documented at
[balanced-ruby/issues](https://github.com/balanced/balanced-ruby/issues)


### Building Documentation

Documentation is built using YARD - http://rubydoc.info/docs/yard

    export AMAZON_ACCESS_KEY_ID='xxx'
    export AMAZON_SECRET_ACCESS_KEY='yyy'
    ./upload_docs.rb

### Scenarios

####Render

To render executable files from scenario templates run `rake render_executables`
Check /scenarios and make sure each scenario has an executable.rb file

####Delete

To delete previously generated executable files run `rake delete_executables`

####Test

After generating executable files, make sure they are valid Ruby files by running `rspec scenarios/execute.rb`

### Troubleshooting

#####OpenSSL
    SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (OpenSSL::SSL::SSLError)

The machine's Ruby/OpenSSL environment can't find any root certificates to trust. Please refer [here](http://www.google.com/search?q=SSL+connect+returned=1+errno=0+state=SSLv3) to find the best solution for your environment.
