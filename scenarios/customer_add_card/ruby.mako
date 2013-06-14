% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/CU5KrnM7ufxhgePgmghE6f5K')
response = customer.add_card('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/cards/CC5Lx8CAHB3bRXG1sENg7urM')

% endif
