% if mode == 'definition':
Balanced::ApiKey.all
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card = Balanced::ApiKey.all

% endif
