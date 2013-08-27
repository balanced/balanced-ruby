% if mode == 'definition':
Balanced::Card.find()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards/CC5ZP031cwTSKE3pSIHNNMRi')
% endif
