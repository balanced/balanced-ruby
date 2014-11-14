% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

key = Balanced::ApiKey.fetch('/api_keys/AKJnLWedoBhUHpdhoGEOPew')
key.unstore

% elif mode == 'response':

% endif
