% if mode == 'definition':
Balanced::ApiKey.new

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

key = Balanced::ApiKey.new.save

% endif
