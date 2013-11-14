% if mode == 'definition':
Balanced::Callback.new
% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% endif
