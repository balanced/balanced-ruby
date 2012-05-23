# Balanced

Online Marketplace Payments

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
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Building Documentation

Documentation is build using YARD - http://rubydoc.info/docs/yard

    yard doc -e doc/balanced_plugin.rb -p doc/balanced_templates/ 'lib/**/resources.rb' --one-file