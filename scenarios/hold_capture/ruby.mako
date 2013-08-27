% if mode == 'definition':
Balanced::Hold.capture(...)

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/holds/HLKvFGAzFm4LqiLblBvyCzm')
debit = hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard',
  :hold_uri => '/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/holds/HLKvFGAzFm4LqiLblBvyCzm'
)

% endif
