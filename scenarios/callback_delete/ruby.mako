% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

callback = Balanced::Callback.find('/callbacks/CB4enFzJu2dvdf40SHIBUAya')
callback.unstore
% elif mode == 'response':

% endif
