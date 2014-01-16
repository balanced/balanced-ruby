% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.find('/cards/CC7nvFZYLkB5xPZDrgwcdIO2')
card.unstore

% elif mode == 'response':

% endif
