% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

customer = Balanced::Customer.find('/cards/CC4TsBYO9E4IRQqg0jvrEg9i')
customer.add_card('')

% endif
