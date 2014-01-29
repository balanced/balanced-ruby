% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

key = Balanced::ApiKey.fetch('/api_keys/AK1vqjn1eEHXP0JYXrBrjH5c')
key.unstore

% elif mode == 'response':

% endif
