% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::Card.find('/cards/CC4ysIN2SnTC7fx5thqY4Gi4')
card.unstore

% elif mode == 'response':

% endif
