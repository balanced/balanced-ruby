% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

key = Balanced::ApiKey.fetch('/api_keys/AK7gg5FNb0Owb6hErcMm0CZ7')
key.unstore

% elif mode == 'response':

% endif
