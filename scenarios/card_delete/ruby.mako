% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC2O5c4KrZSiyV7eFPGySXtd')
card.unstore

% elif mode == 'response':

% endif
