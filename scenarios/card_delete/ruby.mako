% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC4gG6BE70pMOYKPBive9qoF')
card.unstore

% elif mode == 'response':

% endif
