% if mode == 'definition':
Balanced::Card.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card = Balanced::Card.find('/cards/CC4TsBYO9E4IRQqg0jvrEg9i')
% endif
