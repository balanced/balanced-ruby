% if mode == 'definition':
Balanced::Callback.new
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% endif
