% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

customer = Balanced::Customer.new(
  :dob_year => 1963,
  :name => 'Henry Ford',
  :dob_month => 7,
  :address => {
    :postal_code => '48120'
  }
)
customer.save

% endif
