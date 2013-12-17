% if mode == 'definition':
Balanced::Card.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::Card.find('/cards/CC2h52tnQKGgHS7tV7gYIBuK')
card.unstore

% endif
