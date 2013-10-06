% if mode == 'definition':
Balanced::Callback.new
% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% endif
