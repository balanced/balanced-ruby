% if mode == 'definition':
Balanced::Card.unstore

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

card = Balanced::Card.find('/v1/bank_accounts/BA4eTWiY1VPXkGpjaU6XPBhu')
card.unstore

% endif
