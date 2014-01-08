% if mode == 'definition':
Balanced::Card.hold
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card = Balanced::Card.find('/cards/CC4GdFZEeytSnAlEKQgefNkA')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% endif
