% if mode == 'definition':
Balanced::Customer.hold(...)

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1')
customer.hold(
  :amount => '5000',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
