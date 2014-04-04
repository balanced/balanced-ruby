% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

key = Balanced::ApiKey.fetch('/api_keys/AK7EjZ7fq7gpLRj9HQNh12UE')
key.unstore

% elif mode == 'response':

% endif
