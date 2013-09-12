% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC61PVgmqiu2I8GlGEE01wH')
response = customer.add_card('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/cards/CC7tkR6NetljW3FrVHQ0368')

% endif
