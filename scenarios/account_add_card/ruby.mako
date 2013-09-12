% if mode == 'definition':
Balanced::Account.add_card

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/accounts/AC5GKj4twnXFbC4fXnpA9KOY')
response = account.add_card('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/cards/CC5IAVJ3sMG0Ci1FbmizIRYY')

% endif
