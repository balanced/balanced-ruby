% if mode == 'definition':
Balanced::Customer.hold(...)

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

hold = Balanced::Hold.new(
  :amount => '5000',
  :description => 'Some descriptive text for the debit in the dashboard',
  :source_uri => '/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/cards/CC7tkR6NetljW3FrVHQ0368'
)
hold.save
% endif
