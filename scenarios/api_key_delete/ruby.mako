% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

key = Balanced::ApiKey.fetch('/api_keys/AK7KGjv4YKtOf03Lqm0f84V')
key.unstore

% elif mode == 'response':

% endif
