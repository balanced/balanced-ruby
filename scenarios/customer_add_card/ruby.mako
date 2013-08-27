% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/ACO702cHD2tPiOCRSKYzVf1')
response = customer.add_card('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards/CCQv8XnGsBHF9afrEdc0um3')

% endif
