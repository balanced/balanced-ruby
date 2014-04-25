% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4mYF7dj7X6OA2K5F0Qyb4N')
card.unstore

% elif mode == 'response':

% endif
