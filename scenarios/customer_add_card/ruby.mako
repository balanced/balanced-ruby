% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

customer = Balanced::Customer.find('/v1/customers/CU7GuPv9Y2F8ySwJHuHL0YWq')
response = customer.add_card('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards/CC7HVl3IUDtngQOWXk77t3uK')

% endif
