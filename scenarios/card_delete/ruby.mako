% if mode == 'definition':
Balanced::Card.unstore

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/accounts/AC4SoZJ23TvXIUcUOBSTXYHQ/cards/CC4Y12fGIP0HQ1jhcDgE9cFi')
card.unstore

% endif
