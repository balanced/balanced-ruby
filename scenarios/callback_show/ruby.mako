% if mode == 'definition':
Balanced::Callback.find

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

callback = Balanced::Callback.find('/v1/callbacks/CB5GFgGfugkhbKueLUJL6hAa')
% endif
