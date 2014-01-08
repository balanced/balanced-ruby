% if mode == 'definition':
Balanced::Customer.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

customers = Balanced::Customer.all
% endif
