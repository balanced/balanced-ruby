% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::Card.fetch('/cards/CC2uc8iPDjgyxOXHVtnZloyI')
card.unstore

% elif mode == 'response':

% endif
