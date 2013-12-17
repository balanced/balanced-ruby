% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::Card.new(
  :security_code => '123',
  :expiration_month => '12',
  :number => '5105105105105100',
  :expiration_year => '2020'
).save

% endif
