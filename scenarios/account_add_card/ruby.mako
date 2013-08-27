% if mode == 'definition':
Balanced::Account.add_card

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/accounts/AC4SoZJ23TvXIUcUOBSTXYHQ')
response = account.add_card('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards/CC4Y12fGIP0HQ1jhcDgE9cFi')

% endif
