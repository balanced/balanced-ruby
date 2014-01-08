% if mode == 'definition':
Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

events = Balanced::Event.all
% endif
