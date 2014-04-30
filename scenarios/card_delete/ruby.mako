% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.fetch('/cards/CC832pqCbRPor1ewRdxPvnv')
card.unstore

% elif mode == 'response':

% endif
