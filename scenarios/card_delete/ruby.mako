% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card = Balanced::Card.fetch('/cards/CCA3crun7LbUPTtQyJhPAtW')
card.unstore

% elif mode == 'response':

% endif
