% if mode == 'definition':
Balanced::Customer.hold(...)

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

hold = Balanced::Hold.new(
  :amount => '5000',
  :description => 'Some descriptive text for the debit in the dashboard',
  :source_uri => '/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/cards/CC15RAm6JJIEIae6bicvlWRw'
)
hold.save
% endif
