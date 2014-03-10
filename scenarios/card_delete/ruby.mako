% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::Card.fetch('/cards/CC5Buki6e4Kg4bDVZ3OSfQ8O')
card.unstore

% elif mode == 'response':

% endif
