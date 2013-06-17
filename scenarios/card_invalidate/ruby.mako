% if mode == 'definition':
Balanced::Card.invalidate()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/cards/CC4wel9K6ASutW6zqCWZpjsj')
card.invalidate
% endif
