% if mode == 'definition':
Balanced::Callback.new
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% endif
