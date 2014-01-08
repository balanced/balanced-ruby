% if mode == 'definition':
Balanced::Card.new

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card = Balanced::Card.new(
  :expiration_month => '12',
  :expiration_year => '2020',
  :number => '5105105105105100',
  :security_code => '123'
).save

% endif
