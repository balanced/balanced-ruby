% if mode == 'definition':
Balanced::Card.hold
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::Card.find('/cards/CC240ZFh6oitiR35vLqipiOu')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% endif
