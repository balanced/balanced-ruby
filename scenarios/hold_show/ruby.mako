% if mode == 'definition':
Balanced::Hold.find()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/holds/HLoRDe8mOJ3arKOC95Yd0k0')

% endif
