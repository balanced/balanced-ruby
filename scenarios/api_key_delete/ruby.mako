% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

key = Balanced::ApiKey.find('/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k')
key.unstore

% elif mode == 'response':

% endif
