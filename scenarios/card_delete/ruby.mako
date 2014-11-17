% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.fetch('/cards/CC33DRVrekWpiHYjxSdVuqWc')
card.unstore

% elif mode == 'response':

% endif
